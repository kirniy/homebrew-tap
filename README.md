# Kirniy's Homebrew tap

Native Mac utilities from [kirniy](https://github.com/kirniy).

## Aervane

[Aervane](https://github.com/kirniy/aervane) puts Mac temperature and direct fan control in a compact native glass panel.

Install the Developer ID-signed, notarized release:

```sh
brew install --cask kirniy/tap/aervane
```

Supports Intel and Apple Silicon on macOS 13 or later, with linked multi-fan control and temperature monitoring on fanless Macs. [Compatibility details](https://github.com/kirniy/aervane/blob/main/docs/mac-compatibility.md). Installation uses an immutable GitHub release archive with a pinned SHA-256 checksum.

Open Aervane from Applications after installation. On the first fan adjustment, approve its embedded helper in macOS. Update with `brew upgrade --cask kirniy/tap/aervane`.

## Maintaining this tap

Generate the cask with `tools/prepare-distribution.py` in the Aervane source repository after notarization. Copy its `aervane.rb` into `Casks/`, confirm the release is publicly downloadable, then run:

```sh
brew style Casks/aervane.rb
brew audit --cask --online kirniy/tap/aervane
```

Do not publish placeholder checksums, development-signed builds, or instructions that disable Gatekeeper.
