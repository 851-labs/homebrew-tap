cask "gardenbridge" do
  version "1.0.3"
  sha256 "bd0d81840604d768f1c7c12d54097a665abe60ee0c30fcc8f95f9406a5f2c8df"

  url "https://github.com/851-labs/GardenBridge/releases/download/v#{version}/GardenBridge.dmg"
  name "GardenBridge"
  desc "macOS menu bar app that gives AI assistants control over your Mac"
  homepage "https://github.com/851-labs/GardenBridge"
  auto_updates true

  app "GardenBridge.app"
end
