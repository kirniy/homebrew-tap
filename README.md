# Kirniy's Homebrew tap

Native Mac utilities from [kirniy](https://github.com/kirniy).

## Aervane

[Aervane](https://github.com/kirniy/aervane) puts Mac temperature and direct fan control in a compact native glass panel.

The first signed and notarized release is being prepared. The tap is ready, but no installable cask has been published yet. Once that release is available:

```sh
brew install --cask kirniy/tap/aervane
```

The cask will require Apple Silicon and macOS 14 or later. Installation will use an immutable GitHub release archive with a pinned SHA-256 checksum.

## Maintaining this tap

Generate the cask with `tools/prepare-distribution.py` in the Aervane source repository after notarization. Copy its `aervane.rb` into `Casks/`, confirm the release is publicly downloadable, then run:

```sh
brew style Casks/aervane.rb
brew audit --cask --online kirniy/tap/aervane
```

Do not publish placeholder checksums, development-signed builds, or instructions that disable Gatekeeper.
