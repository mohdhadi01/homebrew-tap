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

  zap trash: "~/Library/Containers/com.quicknote.app"
end
