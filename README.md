# Homebrew tap for Axel and Sonata

```bash
brew install scarce/axel/axel            # Axel, the CLI
brew install --cask scarce/axel/sonata   # Sonata, the menu bar app
```

- [Axel](https://axel.md) is agent orchestration, designed for Rex. Every commit on `main` of
  [scarce/axel](https://github.com/scarce/axel) that passes CI is released, and its release
  workflow moves `Formula/axel.rb` here. Use the full name `scarce/axel/axel`: Homebrew core
  has an unrelated `axel`.
- [Sonata](https://github.com/lgalabru/sonata) shows the Solana leader schedule in the macOS
  menu bar, with your validator's next tenure and earnings. Every commit on its `main` that
  passes CI is released, and its release workflow moves `Casks/sonata.rb` here.

`brew upgrade` (or `brew upgrade --cask sonata`) always brings you the newest build.
