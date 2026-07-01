<!--
Sync Impact Report
- Version change: 1.0.0 → 1.1.0
- Modified principles: none renamed
- Added sections: Typography rule under Technology & Convention Constraints (UI)
- Removed sections: none
- Templates: ✅ .specify/templates/plan-template.md (Constitution Check gates)
              ⚠ .specify/templates/spec-template.md (no change needed)
              ⚠ .specify/templates/tasks-template.md (no change needed)
- Follow-up TODOs: none
-->

# Zeleno Constitution

Project: `zeleno_v2` — a Flutter mobile application (plant care / garden management).
This document defines the non-negotiable engineering principles for the project.
It supersedes ad-hoc convention; when in doubt, follow the constitution.

## Core Principles

### I. Feature-First Clean Architecture
Every feature lives under `lib/features/<feature>/` and is split into three layers
with a strict one-way dependency rule (`presentation → domain → data` direction of
dependency inversion; `domain` never imports `presentation` or concrete `data`):

- `domain/` — pure Dart. Contains abstract repository interfaces (`i_*.dart` /
  `IName`), freezed models, and use cases. No Flutter, dio, or get_it imports.
- `data/` — implementation details: retrofit `service/`, repository implementations,
  `persistence/storage/`, and `mocks/`. Depends on `domain` interfaces only.
- `presentation/` — Cubits, screens, and widgets. Talks to `domain` interfaces,
  never to `data` implementations directly.

Cross-feature shared code goes in `lib/core/` (config, helpers), `lib/data/network/`
(dio/error infrastructure), or `lib/uikit/` (design system) — never copied between
features. A new feature MUST follow this exact folder shape.

### II. Cubit + Freezed State Management
All presentation state uses `flutter_bloc` Cubits. Rules:

- One Cubit per screen/flow, with a freezed state class (`*_state.dart` as a `part`
  of the cubit) and an explicit `Status` enum (`initial / loading / success / error`).
- State is immutable; transitions happen only via `emit(state.copyWith(...))`.
- Dependencies are injected through the constructor as `domain` interfaces, never
  resolved from `GetIt` inside the Cubit.
- Side-effect-free build methods: widgets render from state; they do not call
  repositories directly.

### III. Dependency Injection via get_it
`get_it` is the single composition root, wired manually in `lib/app/di/di.dart`.

- Register against the interface (`IAuthRepository`), provide the implementation
  (`AuthRepository`). Consumers depend on the interface.
- All construction of dio, storages, services, repositories, and use cases happens
  in `initializeDependencies()`. No `new` of a repository/service outside DI.
- Cubits receive their dependencies from DI at the widget/route boundary.

### IV. Generated Code Is Source of Truth, Not Handwritten
Models, serialization, API clients, and routes are generated — never hand-edited.

- Models use `freezed` + `json_serializable`. API clients use `retrofit`. Routes use
  `auto_route`. Все зависимости для экрана должны передаваться через wrappedRoute
- After changing any annotated source, run
  `dart run build_runner build --delete-conflicting-outputs`.
- Generated files (`*.freezed.dart`, `*.g.dart`, `*.gr.dart`) are committed and MUST
  NOT be edited by hand. If output is wrong, fix the annotated source and regenerate.

### V. Networking Through the Repository/Service Boundary
Network access is layered and never leaks dio into presentation.

- `service/` = retrofit interface (the raw HTTP contract). `repository/` = the
  domain-facing API that maps DTOs ↔ domain models and translates errors.
- Errors are normalized through `lib/data/network/` (`error_response`,
  `error_mapper`, custom exceptions, `interceptor`) into domain-level failures —
  raw `DioException` does not surface in Cubits or widgets.
- Auth/refresh keeps its dedicated bare dio instance to avoid interceptor deadlock;
  do not route refresh through the intercepted client.

## Technology & Convention Constraints

- **Stack**: Flutter (Dart SDK `>=3.4.4 <4.0.0`), `flutter_bloc`, `get_it`,
  `auto_route`, `dio` + `retrofit`, `freezed` + `json_serializable`,
  `shared_preferences` + `flutter_secure_storage`, `connectivity_plus`.
- **UI**: reuse `lib/uikit/` (theme, typography, dimensions, color theme, buttons,
  inputs) before building new widgets. Theming (light/dark) flows through
  `ThemeCubit`; never hardcode colors or text styles — use the uikit theme.
- **Typography**: widget text styles MUST come from `ZTypography.of(context)` and
  its named tokens (`headline200`, `body`, `action`, etc.). MUST NOT use
  `Theme.of(context).textTheme` or `textTheme.copyWith(...)` anywhere in the app —
  styling does not go through Material `TextTheme`. MUST NOT call
  `ZTypography.copyWith(...)` in presentation code; theme-level typography changes
  belong in `lib/uikit/theme/typography.dart`. At a widget call site, only
  `typography.<token>.copyWith(...)` is permitted for a narrow override (e.g.
  `color`); if multiple typographic properties change, add or reuse a design token
  instead of chaining inline overrides.
- **Assets**: reference assets through Spider-generated constants (`SvgIcons`,
  `ZImages`) — never raw string paths.
- **Localization**: user-facing strings come from intl/l10n (`generate: true`).
  No hardcoded display strings in widgets.
- **Lint**: code MUST pass `flutter analyze` clean under `flutter_lints`.
  Suppress a rule only with a justified, scoped `// ignore:` — never project-wide.

## Development Workflow

- **Quality gate (every change)**: `dart format .`, `flutter analyze` (zero issues),
  and `flutter test` MUST pass before a change is considered done. If annotated
  sources changed, regenerate with build_runner and commit the output.
- **Testing**: business logic and Cubits are covered with `bloc_test` + `mocktail`;
  tests live under `test/` mirroring the `lib/` path. New Cubits and repository
  logic ship with tests. UI screens are tested where they hold logic.
- **Spec-driven flow**: non-trivial features go through the spec-kit pipeline —
  `/speckit-specify` → `/speckit-plan` → `/speckit-tasks` → `/speckit-implement` —
  and the resulting plan MUST conform to these principles.
- **Reviews** verify constitution compliance: correct layering, DI registration,
  generated-code hygiene, no dio/asset-path/string leakage into presentation.

## Governance

This constitution supersedes other conventions. Amendments require a documented
rationale and a version bump per the policy below, and any change that alters the
required workflow or stack must be reflected in the spec-kit templates and CLAUDE.md.

Versioning policy (semantic):
- **MAJOR** — remove or redefine a principle, or a change that invalidates existing
  code/specs.
- **MINOR** — add a new principle or a materially expanded section.
- **PATCH** — clarifications and wording that do not change obligations.

All PRs and AI-assisted changes must verify compliance with these principles.
Unavoidable deviations must be justified explicitly in the PR description.

**Version**: 1.1.0 | **Ratified**: 2026-06-22 | **Last Amended**: 2026-06-22
