# homebrew-lidless

Homebrew tap for [Lidless](https://github.com/fanckush/Lidless), a macOS menu-bar
utility that turns the MacBook internal display off while docked to an external
monitor.

## Install

```sh
brew install --cask fanckush/lidless/lidless
```

## Notes

- The repo must be named `homebrew-lidless` so `brew tap fanckush/lidless` resolves.
- `Casks/lidless.rb` is kept up to date automatically. The Lidless app repo's
  Release workflow dispatches `.github/workflows/bump.yml` with each new version
  and its `sha256`. The pinned `0.1.0` and all-zero `sha256` here are placeholders
  until the first real release fills them in.
