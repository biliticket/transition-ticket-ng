run_cmd := "cargo run"
build_cmd := "cargo build"

app-cli := "-p app-cli"
app-gui := "-p app-gui"

cli:
    {{run_cmd}} {{app-cli}}

gui:
    {{run_cmd}} {{app-gui}}

build-cli:
    {{build_cmd}} {{app-cli}}

release-cli:
    {{build_cmd}} {{app-cli}} --release

build-gui:
    {{build_cmd}} {{app-gui}}

release-gui:
    {{build_cmd}} {{app-gui}} --release

build: build-cli build-gui

release: release-cli release-gui

fmt:
    cargo fmt
    pre-commit run --all-files

install-dev:
    cargo binstall cargo-deny cargo-nextest -y --force
    cargo deny fetch

update:
    nix flake update
    cargo update
    pre-commit autoupdate
    cargo deny fetch

doc:
    cargo doc --open --workspace
