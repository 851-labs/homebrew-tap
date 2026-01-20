# 851 Labs Homebrew Tap

Homebrew tap for shipping CLI tools and macOS apps.

## Install

```
brew tap 851-labs/tap
```

## Install Packages

```
# formula
brew install 851-labs/tap/<name>

# cask
brew install --cask 851-labs/tap/<name>
```

## Packages

### Formulae

- [`macrack`](https://github.com/851-labs/macrack)

### Casks

- [`char`](https://github.com/851-labs/char)

## Update / Uninstall

```
brew update
brew upgrade

brew uninstall <formula>
brew uninstall --cask <cask>

# casks only: remove user data
brew uninstall --cask --zap 851-labs/tap/<cask>
```

## Notes

- Run `brew info 851-labs/tap/<name>` for per-tool caveats (permissions, setup steps, etc.).
