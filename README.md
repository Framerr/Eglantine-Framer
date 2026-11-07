# Frameropia

**Frameropia** is an experimental, open-source Nintendo Switch 2 emulator fork focused on compatibility with **Pokémon Pokopia**.

It is based on [Eglantine](https://github.com/Djihads80/Eglantine), which in turn builds on Eden, yuzu and other open-source work. Frameropia is independent and is not affiliated with Nintendo.

> **Experimental software:** game compatibility, performance and graphical accuracy are not guaranteed. The original v0.0.1 test release predates the Frameropia branding changes; v0.0.2 introduces the new executable names.

## Downloads and testing

- [Releases](https://github.com/Framerr/Frameropia/releases)
- [Pokopia compatibility checklist](docs/POKOPIA_TESTING.md)
- [Report a Pokopia issue](https://github.com/Framerr/Frameropia/issues/new/choose)
- [Latest patch notes (v0.0.2)](docs/releases/v0.0.2.md)
- [Previous release notes (v0.0.1)](docs/releases/v0.0.1.md)
- [Repository rename and data compatibility](docs/FRAMEROPIA_RENAME.md)

Only use game files and console data that you have legally obtained. Do not upload games, firmware or console keys to issues.

## Development

See the [build guide](docs/Build.md), [CI/release guide](docs/CI.md) and [contribution guide](CONTRIBUTING.md). Please use English for issues, pull requests, code comments and documentation.

## Existing settings and saves

The fork currently retains Eden/Eglantine's internal data directories. This is intentional: renaming the GUI and binaries must not make existing configuration, installed content, or saves disappear.

## Credits and license

Frameropia is derived from [Eglantine](https://github.com/Djihads80/Eglantine), with contributions originating in Eden, yuzu, Sudachi and other projects.

Licensed under [GPL-3.0-or-later](LICENSE.txt), subject to the repository's existing license notices.
