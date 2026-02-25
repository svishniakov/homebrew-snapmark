cask "snapmark" do
  version "1.1.1"
  sha256 "4e134d68949058a1ef4e292caa90959fb9e7576f51b7d72d1aaa8f1bb34a4d49"

  url "https://github.com/svishniakov/snapmark/releases/download/v#{version}/SnapMark-#{version}.dmg"
  name "SnapMark"
  desc "Screenshot annotation tool for macOS"
  homepage "https://github.com/svishniakov/snapmark"

  depends_on macos: ">= :ventura"

  app "SnapMark.app"

  zap trash: [
    "~/Library/Application Support/snapmark/settings.json",
    "~/Library/Preferences/com.snapmark.app.plist",
  ]
end
