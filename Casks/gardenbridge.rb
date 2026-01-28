cask "gardenbridge" do
  version "1.0.10"
  sha256 "54b307afff53b234f3f10eb3ebd8dd403b36a907c4e65fc7fd712565dcf13806"

  url "https://github.com/851-labs/GardenBridge/releases/download/v#{version}/GardenBridge.dmg"
  name "GardenBridge"
  desc "macOS menu bar app that gives AI assistants control over your Mac"
  homepage "https://github.com/851-labs/GardenBridge"
  auto_updates true

  app "GardenBridge.app"
end
