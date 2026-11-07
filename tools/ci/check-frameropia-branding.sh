#!/usr/bin/env bash
# Verifies public-facing branding and build-output wiring.
set -euo pipefail

require() {
  local file="$1" expected="$2"
  grep -Fq -- "$expected" "$file" || {
    echo "Missing '$expected' in $file" >&2
    exit 1
  }
}

for file in README.md src/yuzu/main.ui src/yuzu/aboutdialog.ui; do
  require "$file" "Frameropia"
done
require src/yuzu/configuration/configure.ui "Frameropia Configuration"
require CMakeModules/GenerateSCMRev.cmake 'set(REPO_NAME "Frameropia")'
require src/yuzu/CMakeLists.txt 'OUTPUT_NAME "frameropia"'
require src/yuzu_cmd/CMakeLists.txt 'OUTPUT_NAME "frameropia-cli"'
require .github/workflows/build-windows.yml 'frameropia.exe'
require .github/workflows/build-linux.yml 'build/release/bin/frameropia'
require .github/workflows/build-macos.yml 'build/release/bin/frameropia.app'
require .github/workflows/release.yml 'pattern: frameropia-*'
require src/yuzu/aboutdialog.ui 'https://github.com/Framerr/Frameropia'
require src/yuzu/main_window.cpp 'https://github.com/Framerr/Frameropia'
test -s dist/io.github.framerr.frameropia.desktop
test -s dist/io.github.framerr.frameropia.metainfo.xml
test -s dist/io.github.framerr.frameropia.xml
require CMakeLists.txt 'dist/io.github.framerr.frameropia.desktop'
require CMakeLists.txt 'dist/io.github.framerr.frameropia.metainfo.xml'
require CMakeLists.txt 'dist/io.github.framerr.frameropia.xml'

if grep -Eqi 'discord_group|toggle_discordrpc|discord\.gg|>Discord<' \
    src/yuzu/configuration/configure_web.ui src/yuzu/aboutdialog.ui; then
  echo "Discord options or links are still visible in the UI" >&2
  exit 1
fi

echo "Frameropia branding and release packaging checks passed."
