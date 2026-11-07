# Frameropia repository rename

The GitHub repository has been renamed from `Framerr/Eglantine-Framer` to
[Framerr/Frameropia](https://github.com/Framerr/Frameropia). The emulator user
interface, executable files, packages and project links are now branded Frameropia.

The repository originally used `nx2` as its default branch, like the upstream
Eglantine project. The `main` branch has now been created from that same history. To complete the
migration, the repository owner must change the default branch from `nx2` to
`main` in **Settings → Branches** (or **Settings → General → Default branch**, depending on GitHub's interface).

Future Frameropia development and release workflows target `main`. The older `nx2`
branch remains as a historical reference and upstream comparison point.

Target repository: `https://github.com/Framerr/Frameropia`

GitHub redirects links to renamed repositories, but update local remotes as well:

```sh
git remote set-url origin https://github.com/Framerr/Frameropia.git
```

## Compatibility notes

- Existing Eden/Eglantine configuration, cache, and save directories are
  intentionally retained for now. Do not delete them just because the app has
  a new display name.
- Original project attribution and dependency links remain intact.
- Existing v0.0.1 binaries were produced before the rebrand and retain their
  old executable names. New release builds use `frameropia` and
  `frameropia-cli`.
- The original icon artwork remains in place. Replacing artwork is a separate
  change from renaming public-facing labels and package metadata.
- The automatic updater is not configured for Frameropia. GitHub release
  downloads should be used instead.
