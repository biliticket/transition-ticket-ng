run_cmd := "cargo run"
build_cmd := "cargo build"
dx_cmd := "dx serve"

app-cli := "-p cli"

cli:
    {{run_cmd}} {{app-cli}}

build-cli:
    {{build_cmd}} {{app-cli}}

release-cli:
    {{build_cmd}} {{app-cli}} --release

[working-directory: "gui"]
desktop:
    {{dx_cmd}} --platform desktop

[working-directory: "gui"]
web:
    {{dx_cmd}} --platform web

[working-directory: "gui"]
android:
    {{dx_cmd}} --platform android

[working-directory: "gui"]
ios:
    {{dx_cmd}} --platform ios

build: build-cli

release: release-cli

fmt:
    cargo fmt
    pre-commit run --all-files

install-dev:
    cargo binstall cargo-deny cargo-nextest dioxus-cli -y --force
    cargo deny fetch

update:
    nix flake update
    cargo update
    cargo deny fetch
    pre-commit autoupdate

doc:
    cargo doc --open --workspace
