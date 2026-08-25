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
    def test_allows_shared_words_only_for_known_locale_and_key_pairs(self) -> None:
        self.assertTrue(
            audit.source_copy_is_allowed("da", ("watch", "nutrition", "protein"), "Protein")
        )
        self.assertTrue(
            audit.source_copy_is_allowed("ro", ("watch", "nutrition", "nutrient"), "Nutrient")
        )
        self.assertFalse(
            audit.source_copy_is_allowed("de", ("watch", "nutrition", "protein"), "Protein")
        )
        self.assertFalse(
            audit.source_copy_is_allowed("de", ("watch", "nutrition", "nutrient"), "Nutrient")
        )

    def test_allows_product_names_and_units_by_key(self) -> None:
        self.assertTrue(
            audit.source_copy_is_allowed("de", ("watch", "appTitle"), "Calorify Watch")
        )
        self.assertTrue(
            audit.source_copy_is_allowed("de", ("watch", "common", "kcal"), "kcal")
        )


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
    def make_catalogs(self, root: Path, translated_text: str | None) -> None:
        i18n_dir = root / "shared_packages" / "i18n" / "lib" / "i18n"
        i18n_dir.mkdir(parents=True)
        source = {
            "language": "English",
            "flag": "🇺🇸",
            "appLabel": "Calorify",
            "message": "This sentence should have been translated.",
        }
        target = {"language": "Deutsch", "flag": "🇩🇪", "appLabel": "Calorify"}
        if translated_text is not None:
            target["message"] = translated_text
        (i18n_dir / "en.i18n.json").write_text(json.dumps(source), encoding="utf-8")
        (i18n_dir / "de.i18n.json").write_text(json.dumps(target), encoding="utf-8")

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


if __name__ == "__main__":
    unittest.main()
