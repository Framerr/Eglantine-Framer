<div align="center">
  <img src="dist/frameropia-logo.png" width="128" height="128" alt="Frameropia orange F logo" />
  <h1>Frameropia</h1>
  <p><strong>An experimental Nintendo Switch 2 emulator fork with a focus on Pokémon Pokopia.</strong></p>
  <p>
    <a href="https://github.com/Framerr/Frameropia/releases"><img alt="Latest release" src="https://img.shields.io/github/v/release/Framerr/Frameropia?label=Release&color=f58b28" /></a>
    <a href="https://github.com/Framerr/Frameropia/issues"><img alt="GitHub issues" src="https://img.shields.io/github/issues/Framerr/Frameropia?color=3463a2" /></a>
    <a href="LICENSE.txt"><img alt="GPL-3.0-or-later" src="https://img.shields.io/badge/License-GPL--3.0--or--later-blue" /></a>
  </p>
  <p>
    <a href="https://github.com/Framerr/Frameropia/releases"><strong>Download</strong></a> ·
    <a href="docs/releases/v0.0.3.md"><strong>v0.0.3 patch notes</strong></a> ·
    <a href="docs/POKOPIA_TESTING.md"><strong>Testing guide</strong></a> ·
    <a href="https://github.com/Framerr/Frameropia/issues/new/choose"><strong>Report an issue</strong></a>
  </p>
</div>

---

## About

Frameropia is an independent open-source fork of [Eglantine](https://github.com/Djihads80/Eglantine), building on the work of Eden, yuzu and their contributors. It currently prioritizes practical Pokémon Pokopia compatibility testing, while preserving the upstream project's broader functionality.

> [!WARNING]
> **Experimental software.** Compatibility, image capture, frame rate and rendering are not guaranteed. The photo readback fix in v0.0.3 greatly improves reliability in user testing but **does not eliminate corruption**, especially on early captures after startup.

## What's new in v0.0.3

| Area | Change |
| :-- | :-- |
| 📸 **Pokopia photos** | Flush accelerated image-to-buffer DMA readbacks to guest memory before completing the transfer. |
| 🎨 **Branding** | New transparent orange **F** logo for this README and the Windows executable/Qt icon. |
| 🧪 **Testing** | Keep the validated readback change; exclude experimental patches that caused regressions. |
| 📝 **Documentation** | Clearer project overview and complete [technical and plain-English patch notes](docs/releases/v0.0.3.md). |

**Test evidence:** with the DMA fix, one initial set of 50 Pokopia photos yielded **48 correct and 2 corrupt**. Follow-up tests revealed remaining cold-start failures (the first photo failed in three independent startups) and occasional image displacement. These are **known issues**, not fixed in v0.0.3. See [issue #14](https://github.com/Framerr/Frameropia/issues/14).

## Download and run

1. Get the Windows archive from [Releases](https://github.com/Framerr/Frameropia/releases).
2. Extract the **entire** ZIP to a folder.
3. Start `frameropia.exe`; `frameropia-cli.exe` is provided for command-line usage.

Frameropia retains the existing Eden/Eglantine user-data locations so your settings and saves remain accessible. See the [rename and data compatibility guide](docs/FRAMEROPIA_RENAME.md).

**Use only game and console files you have legally obtained.** Do not attach game files, firmware or console keys to issue reports.

## Contribute and report bugs

Use the [Pokopia testing checklist](docs/POKOPIA_TESTING.md) and [issue templates](https://github.com/Framerr/Frameropia/issues/new/choose) to report reproducible problems. Please provide steps, graphics hardware, settings, and logs where relevant.

See the [build guide](docs/Build.md), [CI guide](docs/CI.md), and [contribution guide](CONTRIBUTING.md). Project contributions, bug reports and documentation should be in **English**.

## Acknowledgements and license

Frameropia is based on [Eglantine](https://github.com/Djihads80/Eglantine) with upstream contributions from Eden, yuzu, Sudachi and other open-source developers. The Pokémon Pokopia DMA readback correction was adapted from [notsapinho/Eglantine](https://github.com/notsapinho/Eglantine/commit/7dde4f158d4eedacf62172d619b4b2f8b5d48cdb).

Distributed under [GPL-3.0-or-later](LICENSE.txt), alongside the existing source-level copyright and license notices. Frameropia is not affiliated with, sponsored by, or endorsed by Nintendo or The Pokémon Company.
