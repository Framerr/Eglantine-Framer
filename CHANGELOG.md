# Changelog

All notable changes to Frameropia are documented here. Each release's notes are taken from its
`## [X.Y.Z]` section (release candidates use the section of the version they are a candidate for).
New entries go under `## [Unreleased]`.

## [Unreleased]

## [0.0.3]

- **Pokémon Pokopia:** flush accelerated Switch 2 image-to-buffer DMA destinations to guest memory before completing the copy, greatly reducing photo corruption. Adapted from notsapinho/Eglantine commit `7dde4f15`.
- **Verified user testing:** 48/50 photos correct in the initial 50-photo series; sporadic corruption, especially the first photo after startup, remains a known issue.
- **New Frameropia logo:** add an orange-gradient F logo with transparent background for the README, Qt resources, and the Windows application icon.
- **README and documentation:** improve presentation, navigation, testing guidance and transparent patch notes.
- **Safer release scope:** exclude rejected experiments #16, #18, #19 and #20, which did not pass gameplay testing.
- **Compatibility:** preserve existing executable names and user-data/save directories. No claim of achieving the 60 FPS performance seen in notsapinho build 24.

## [0.0.2]

- Rename the Frameropia user interface, menus, dialogs, notifications, public executables, and package metadata.
- Remove Discord navigation and presence settings from the application.
- Update project links and README to Frameropia while retaining original upstream licensing and credits.
- Fix the CMake CLI output-name override so the Windows build produces `frameropia-cli.exe`.
- Fix the release workflow so Windows packages include complete binaries, DLLs and Qt plugins in a single ZIP rather than multiple plugin-folder ZIP files.
- Repair the legacy v0.0.1 download without changing its historical source tag.
- Preserve the pre-existing Eden/Eglantine data locations to avoid disrupting configuration and saves.
- Pokémon Pokopia improvements are **not verified**; this release is primarily branding and packaging work.

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
