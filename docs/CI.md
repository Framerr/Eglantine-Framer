# Frameropia CI and release process

The project's development branch is **`main`**. It was created from the existing `nx2` history, preserving every committed change.

> GitHub's default branch must also be switched to `main` in the repository settings. Until that is done, GitHub may show `nx2` first and some default-branch-dependent Actions will still use `nx2`.

## Automated checks

- `fork-preflight.yml`: checks shell scripts, version metadata, notes and branding on pull requests and pushes to `main`.
- `fork-windows-check.yml`: builds the Windows executable for pull requests that change the emulator or build configuration. It uploads temporary build artifacts but does not publish a release.
- `fork-windows-release.yml`: on a `VERSION` change pushed to `main`, checks that the version and changelog are valid and that no release tag exists; then builds Windows and publishes one test pre-release if compilation and packaging succeed.
- `build-windows.yml`, `build-linux.yml` and `build-macos.yml`: reusable builders. Their CMake target names remain `yuzu` and `yuzu-cmd`, while the public executable names are `frameropia` and `frameropia-cli`.
- `release.yml`: reusable publisher. For Windows, it checks the executable files and packs the complete working directory, including Qt plugins and DLLs, into one ZIP. Invalid or incomplete packages fail before publication.
- `ci.yml`: optional manual cross-platform, nightly, or labelled-PR builds. Automatic version pushes in this fork use `fork-windows-release` to prevent competing publishers from racing on a tag.

## Publishing a version

1. Update `VERSION` to a new three-component version such as `0.0.3`; never reuse an existing tag.
2. Add a populated matching `## [0.0.3]` section to `CHANGELOG.md`. For full patch notes and a plain-English summary, add `docs/releases/v0.0.3.md`.
3. Review the changes through a pull request into `main` and ensure CI passes.
4. Merge the pull request. The Windows release workflow should run automatically.
5. Verify the completed [GitHub Actions](https://github.com/Framerr/Frameropia/actions) job and the actual [Releases](https://github.com/Framerr/Frameropia/releases) assets before announcing success.

A successful preflight is not proof of game compatibility. Windows compilation and packaging must complete successfully before an archive is announced.

## Version history and compatibility

`v0.0.1` was compiled before the Frameropia UI rebrand. Its corrected archive contains `eglantine.exe` and `eden-cli.exe` and retains the original source tag for reproducibility.

From `v0.0.2` onward, builds are intended to contain `frameropia.exe` and `frameropia-cli.exe`. The package must be verified by Actions before being treated as available.

Existing Eden/Eglantine user data paths are intentionally unchanged to avoid disrupting settings and saves.
