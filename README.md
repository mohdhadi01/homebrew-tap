# mohdhadi01/tap

Homebrew tap for [QuickNote](https://github.com/mohdhadi01/QuickNote-Mac), a
native macOS instant-notes utility.

## Install

```bash
brew install --cask mohdhadi01/tap/quicknote
```

Apps installed through Homebrew do not carry the Gatekeeper quarantine stamp,
so QuickNote opens right away with no "could not verify" warning. This is the
smoothest free install path while the app is not notarized.

## Updating

The cask tracks the latest GitHub release of the app repo
(`strategy :github_latest`). After publishing a new release, bump the
`version` line in `Casks/quicknote.rb` and push.
