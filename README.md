# LaiYongqiang Homebrew Tap

Official Homebrew Tap for [SleepGuard](https://github.com/LaiYongqiang/SleepGuard) and other macOS utilities.

## Install SleepGuard

Installs both **SleepGuard.app** (`/Applications`) and the **`sleepguard` CLI companion**:

```bash
brew install --cask --no-quarantine laiyongqiang/tap/sleepguard
```

*(On Homebrew 7+, trust the tap once if prompted: `brew trust laiyongqiang/tap`)*

Or add the tap first:

```bash
brew tap laiyongqiang/tap
brew install --cask --no-quarantine sleepguard
```

## Upgrade

```bash
brew upgrade --cask --no-quarantine sleepguard
```

## Uninstall

```bash
brew uninstall --cask sleepguard
```
