default:
    just --list

build-android:
    @OPENSSL_DIR="$TERMUX__PREFIX" PKG_CONFIG_ALLOW_CROSS=1 cargo build --release

# Usage: just tag_and_release
# Must be run from an up-to-date main — the script will refuse other branches.
tag: tag_and_release

tag_and_release:
    sh tag_and_release.sh

sync_readme:
    cp README.md npm/README.md
