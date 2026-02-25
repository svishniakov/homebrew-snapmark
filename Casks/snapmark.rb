cask "snapmark" do
  version "1.1.0"
  sha256 "c2457d7a4ef53dfbb6be588f4332047ee9bd198f702547febef513d4f51943a0"

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
