# LaiYongqiang Homebrew Tap

Official Homebrew Tap for [SleepSkip](https://github.com/LaiYongqiang/SleepSkip) (惜眠) and other macOS utilities.

## Install SleepSkip

Installs both **SleepSkip.app** (`/Applications`) and the **`sleepskip` CLI companion**:

```bash
brew install --cask laiyongqiang/tap/sleepskip
```

The fully-qualified name taps the repository and trusts only this cask, so no separate `brew tap` or `brew trust` step is needed.

The CLI is named `sleepskip` rather than `skip` because `skip` is already taken by skip.tools on Homebrew.

## Upgrade

```bash
brew upgrade --cask sleepskip
```

## Uninstall

```bash
brew uninstall --cask sleepskip
```

## Migrating from SleepGuard

SleepGuard was renamed to SleepSkip in v1.2.0. The old cask and bundle identifier are gone, so remove the previous install first:

```bash
brew uninstall --cask sleepguard
brew install --cask laiyongqiang/tap/sleepskip
```
