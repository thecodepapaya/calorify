from __future__ import annotations

import importlib.util
import json
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path


REPOSITORY_ROOT = Path(__file__).resolve().parents[2]
AUDIT_SCRIPT = REPOSITORY_ROOT / "scripts" / "audit_translations.py"
GENERATOR_SCRIPT = REPOSITORY_ROOT / "scripts" / "generate_translations.sh"
RESOLVER_SCRIPT = REPOSITORY_ROOT / "scripts" / "resolve_openai_api_key.py"


def load_module(name: str, path: Path):
    spec = importlib.util.spec_from_file_location(name, path)
    assert spec and spec.loader
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


audit = load_module("audit_translations", AUDIT_SCRIPT)
resolver = load_module("resolve_openai_api_key", RESOLVER_SCRIPT)


class TranslationAuditTest(unittest.TestCase):
    def test_detects_mixed_script_corruption(self) -> None:
        errors = audit.script_errors("he", "\u05de\u05d8abolism")

        self.assertTrue(any("mixed-script word" in error for error in errors))

    def test_detects_an_unexpected_script(self) -> None:
        cyrillic_text = "\u041f\u0440\u0438\u0432\u0435\u0442"

        self.assertEqual(audit.script_errors("de", cyrillic_text), ["unexpected script(s): CYRILLIC"])


class GeneratorOutputTest(unittest.TestCase):
    def test_shared_status_output_uses_ascii_glyphs(self) -> None:
        command = (
            f"source {GENERATOR_SCRIPT!s}; "
            "print_header header; print_info info; print_warning warning; "
            "print_error error; print_success success"
        )

        result = subprocess.run(["bash", "-c", command], check=True, capture_output=True)

        result.stdout.decode("ascii")


class ResolveOpenAiApiKeyTest(unittest.TestCase):
    def test_environment_takes_precedence_over_token_file(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / "scripts").mkdir()
            (root / "scripts" / ".openai_api_key").write_text("file-token\n", encoding="utf-8")

            self.assertEqual(resolver.resolve_api_key(root, {"OPENAI_API_KEY": " env-token "}), "env-token")

    def test_reads_first_non_comment_line_from_token_file(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / "scripts").mkdir()
            (root / "scripts" / ".openai_api_key").write_text("# local token\n\nfile-token\n", encoding="utf-8")

            self.assertEqual(resolver.resolve_api_key(root, {}), "file-token")

    def test_returns_none_when_no_token_exists(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            self.assertIsNone(resolver.resolve_api_key(Path(directory), {}))


class TranslationAuditCliTest(unittest.TestCase):
    def make_catalogs(
        self,
        root: Path,
        translated_text: str | None,
        source_text: str = "This sentence should have been translated.",
    ) -> Path:
        i18n_dir = root / "shared_packages" / "i18n" / "lib" / "i18n"
        i18n_dir.mkdir(parents=True)
        source = {
            "language": "English",
            "flag": "🇺🇸",
            "appLabel": "Calorify",
            "message": source_text,
        }
        target = {"language": "Deutsch", "flag": "🇩🇪", "appLabel": "Calorify"}
        if translated_text is not None:
            target["message"] = translated_text
        (i18n_dir / "en.i18n.json").write_text(json.dumps(source), encoding="utf-8")
        target_path = i18n_dir / "de.i18n.json"
        target_path.write_text(json.dumps(target), encoding="utf-8")
        return target_path

    def run_audit(self, root: Path, *arguments: str) -> subprocess.CompletedProcess[str]:
        return subprocess.run(
            [sys.executable, str(AUDIT_SCRIPT), "--root", str(root), "--locale", "de", *arguments],
            check=False,
            capture_output=True,
            text=True,
        )

    def test_rejects_missing_keys(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            self.make_catalogs(root, None)

            result = self.run_audit(root)

            self.assertEqual(result.returncode, 1)
            self.assertIn("missing keys: message", result.stderr)

    def test_rejects_long_source_copies(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            self.make_catalogs(root, "This sentence should have been translated.")

            strict_result = self.run_audit(root)
            self.assertEqual(strict_result.returncode, 1)
            self.assertIn("Long values still identical to English", strict_result.stderr)

    def test_allows_short_identical_words(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            self.make_catalogs(root, "Protein", source_text="Protein")

            result = self.run_audit(root)

            self.assertEqual(result.returncode, 0)
            self.assertIn("Translation audit passed", result.stdout)
            self.assertNotIn("Non-allowlisted", result.stdout)

    def test_rejects_placeholder_mismatches(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            self.make_catalogs(root, "Hallo", source_text="Hello {name}")

            result = self.run_audit(root)

            self.assertEqual(result.returncode, 1)
            self.assertIn("placeholder mismatch", result.stderr)

    def test_rejects_extra_keys(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            target_path = self.make_catalogs(root, "Uebersetzt")
            target = json.loads(target_path.read_text(encoding="utf-8"))
            target["extra"] = "Extra"
            target_path.write_text(json.dumps(target), encoding="utf-8")

            result = self.run_audit(root)

            self.assertEqual(result.returncode, 1)
            self.assertIn("extra keys: extra", result.stderr)

    def test_rejects_invalid_json(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            target_path = self.make_catalogs(root, "Uebersetzt")
            target_path.write_text("{", encoding="utf-8")

            result = self.run_audit(root)

            self.assertEqual(result.returncode, 1)
            self.assertIn("invalid JSON", result.stderr)

    def test_rejects_invalid_locale_metadata(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            target_path = self.make_catalogs(root, "Uebersetzt")
            target = json.loads(target_path.read_text(encoding="utf-8"))
            target["language"] = "German"
            target_path.write_text(json.dumps(target), encoding="utf-8")

            result = self.run_audit(root)

            self.assertEqual(result.returncode, 1)
            self.assertIn("language metadata", result.stderr)


if __name__ == "__main__":
    unittest.main()
