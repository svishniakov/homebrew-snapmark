# homebrew-snapmark

Official Homebrew tap for SnapMark.

## Install

```bash
brew tap svishniakov/snapmark
brew install --cask snapmark
```

## Update cask for a new release

1. Build DMG in app repo:
```bash
./scripts/build_release_dmg.sh <version>
```
2. Generate cask in app repo:
```bash
./scripts/generate_cask.sh --repo svishniakov/snapmark --version <version> --dmg build/SnapMark-<version>.dmg
```
3. Copy generated `packaging/homebrew/Casks/snapmark.rb` here to `Casks/snapmark.rb` and push.
