cask "quicknote" do
  version "1.0"
  sha256 :no_check

  url "https://github.com/mohdhadi01/QuickNote-Mac/releases/download/v#{version}/QuickNote-#{version}.dmg",
      verified: "github.com/mohdhadi01/QuickNote-Mac"
  name "QuickNote"
  desc "Instant notes for macOS: one global shortcut, everything stored locally"
  homepage "https://github.com/mohdhadi01/QuickNote-Mac"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "QuickNote.app"

  # Homebrew stamps downloads with the Gatekeeper quarantine attribute, which
  # would surface the "could not verify" prompt for this un-notarized app.
  # This is the developer's own tap and the binary comes straight from the
  # developer's signed GitHub release, so the stamp is removed after install.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/QuickNote.app"],
                   sudo: true
  end

  zap trash: "~/Library/Containers/com.quicknote.app"
end
