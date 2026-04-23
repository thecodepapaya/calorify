---
name: icon-system-flow
description: Centralizes UI icon usage through shared AppIcons constants. Use when adding or changing icons, replacing direct LucideIcons usage, or standardizing iconography across app screens.
---

# Icon System Flow

## Goal

Use one shared icon registry so icon changes happen in a single place.

## Source of Truth

- Use `AppIcons` from `shared_packages/widgets/lib/src/app_icons.dart`.
- Exported via `shared_packages/widgets/lib/widgets.dart`.
- Avoid direct `LucideIcons.*` usage in app feature files.

## Workflow

1. Add/adjust icon mapping in `AppIcons`.
2. In app code, import `package:widgets/widgets.dart`.
3. Replace icon references with `AppIcons.<name>`.
4. Keep naming consistent with Lucide naming where possible.
5. Run lints for touched files.

## Rules

- Prefer existing `AppIcons` entries before adding new ones.
- If an icon must change app-wide, only update the mapping in `AppIcons`.
- For new UI, never introduce direct package icon imports in feature screens.
