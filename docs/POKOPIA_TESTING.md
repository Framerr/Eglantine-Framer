# Pokémon Pokopia — compatibility testing

This fork is experimental. **An available binary does not mean Pokémon Pokopia is fully playable.**
Report only what a specific build actually does, and keep each issue focused on one reproducible symptom.

## First test: v0.0.1

- Base: Eglantine `nx2`, with the fork's Vulkan null texel-buffer changes ([PR #1](https://github.com/Framerr/Eglantine-Framer/pull/1)).
- Purpose: establish a reproducible baseline, especially for graphics, crashes, and game startup.
- Verified in code: null texel-buffer views use `VK_WHOLE_SIZE`, and the fallback null buffer supports uniform/storage texel-buffer usage.
- **Not yet verified:** full build, in-game behavior, the photo system, geometry stability, or whether those Vulkan changes improve Pokopia.
- Windows binaries are built by GitHub Actions (not by copying game files into the repository).

## Get a test build

1. Open [Actions → ci](https://github.com/Framerr/Eglantine-Framer/actions/workflows/ci.yml).
2. Choose **Run workflow**, branch **nx2**, `kind: stable`, `platforms: windows`, `pgo: none`, and `publish: true`.
3. Once a build succeeds and publishes, download the Windows ZIP from [Releases](https://github.com/Framerr/Eglantine-Framer/releases). Extract the whole archive and run `eglantine.exe` — do not run it from inside the ZIP.
4. If the workflow or Windows build fails, report the workflow run URL instead of assuming the emulator binary exists.

## Smoke-test checklist

Record **Pass**, **Fail**, or **Not tested** for each item. Test with the same game update and emulator settings when comparing two builds.

| Check | What to verify |
| --- | --- |
| Startup | The process opens and progresses beyond a black window to the title screen |
| Save loading | A game loads; no crash or indefinite loading |
| World geometry | Buildings, terrain, plants, and characters appear consistently when moving the camera |
| Furniture | Furniture is rendered indoors, not only its shadow |
| Lighting / fog | Daylight, sky, shadows, and depth-dependent haze look consistent as the camera tilts |
| Photos | The captured photo matches the preview and does not show unexpected artifacts |
| Stability | No intermittent disappearing geometry or shader corruption after playing for a few minutes |
| Sound and controls | Sound effects, music, and controller input work as expected |
| Save persistence | Saving and loading a second time works without losing progress |
| Performance | FPS, stutters, VRAM use, and game area are recorded; compare the same scene |

If a visual bug occurs only while screen sharing or with an overlay enabled, also repeat without the overlay and report **both** outcomes.

## Useful existing external reports

- [Lichii #602 — invisible furniture, shadows visible](https://github.com/zortos293/Lichii/issues/602)
- [Lichii #17 — washed-out/purple haze by camera angle](https://github.com/zortos293/Lichii/issues/17)
- [Eglantine #387 — analysis of Pokopia rendering and shaders](https://github.com/Djihads80/Eglantine/issues/387)
- [Eglantine PR #543 — deferred command-list copies behind pending GPU maps](https://github.com/Djihads80/Eglantine/pull/543)

These references provide hypotheses and prior work; they do **not** establish that a given bug is fixed in this fork.

## Report a problem

Use the [Pokopia issue form](https://github.com/Framerr/Eglantine-Framer/issues/new/choose). Include:

- Exact release, commit, emulator graphics backend/settings, GPU and driver, OS, and game update.
- Reproduction steps, expected result, and actual result. Say whether it also happens on an earlier build.
- A short screen recording or before/after screenshots for rendering differences.
- The relevant log (`eden_log.txt` when available), ideally from a fresh run reproducing only the problem.

**Privacy and copyright:** Logs can expose local usernames, file paths, or other personal information; review them before posting. Do not upload game images, firmware, console keys, or copyrighted assets to issues.

A fix is ready only after it compiles and passes both a focused reproducer and a basic regression smoke test in another game. Do not merge unverified graphics changes merely because they affect the same game.
