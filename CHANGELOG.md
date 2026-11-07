# Changelog

All notable changes to Eglantine are documented here. Each release's notes are taken from its
`## [X.Y.Z]` section (release candidates use the section of the version they are a candidate for).
New entries go under `## [Unreleased]`; `tools/ci/bump-version.sh` turns them into a version section.

## [Unreleased]

### Frameropia rebrand (after v0.0.1)

- Rebrand the GUI, dialogs, startup messages, and packaged executable names to **Frameropia**.
- Remove Discord links and presence options from the application's interface.
- Point the fork's documentation, help screens, issue reporting, and release links to the Frameropia GitHub repository.
- Update CI release assets and packaging metadata for Windows, Linux, and macOS.
- Preserve legacy Eden/Eglantine data paths to avoid disrupting existing settings and saves.

- Added OOT Compatibility
- Improved MKW Performances
- Added StarFox Compatibility
- Less shader rebuilds
- Changed dir from eden to eglantine
- Overall better performances and fixes

## [0.0.1]

- First experimental test release of Framerr/Eglantine-Framer, based on the current Eglantine `nx2` source.
- Vulkan: use `VK_WHOLE_SIZE` for null texel-buffer views rather than a zero-length view.
- Vulkan: allow null buffers to be used for uniform and storage texel-buffer descriptors.
- Pokémon Pokopia compatibility is **not verified** in this fork. Please report startup, visual, audio, stability and performance problems, ideally with `eden_log.txt`, your GPU model, driver version and reproduction steps.
- Test focus: booting into a saved game, correct environment geometry and textures, photo capture, visual stability, and avoiding black screens.
- Testing guide and issue form: see `docs/POKOPIA_TESTING.md` for reproducible reports.
- Vulkan fallback-buffer fix is a correctness change; Pokopia-specific improvements still require validation with this release.

## [0.1.0]

- Initial release candidate
