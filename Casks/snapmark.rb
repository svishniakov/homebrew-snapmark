cask "snapmark" do
  version "1.1.3"
  sha256 "4c1236b3540c41f8d4eb1fff4490aa8d6dc996a4d3ebcf508c366f2d698275cf"

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
