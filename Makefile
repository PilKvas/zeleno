.PHONY: help exports generate-exports migrate-imports

help:
	@echo "Targets:"
	@echo "  exports              Regenerate lib/**/export.dart barrel files"
	@echo "  generate-exports     Alias for exports"
	@echo "  migrate-imports      Rewrite package imports to use barrel exports"

exports generate-exports:
	dart run tool/generate_exports.dart

migrate-imports:
	dart run tool/migrate_imports_to_exports.dart
