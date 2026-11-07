# Frameropia repository rename

The public project name is **Frameropia**. The rebrand updates the emulator UI, its
executables, packages, documentation, and project links. The *repository's name*
is a GitHub account setting and cannot be changed by the source-code commits alone.

After merging the rebrand, the repository owner should open
`Settings → General → Repository name` and change
`Eglantine-Framer` to `Frameropia`.

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
