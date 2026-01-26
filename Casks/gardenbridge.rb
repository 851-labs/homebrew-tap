cask "gardenbridge" do
  version "1.0.1"
  sha256 "9e8d573b3926dc1a0be39d6c41b34ca392a7fd0373e4f5fe1d280ae1d0c6c0af"

  url "https://github.com/851-labs/GardenBridge/releases/download/v#{version}/GardenBridge.dmg"
  name "GardenBridge"
  desc "macOS menu bar app that gives AI assistants control over your Mac"
  homepage "https://github.com/851-labs/GardenBridge"
  auto_updates true

  app "GardenBridge.app"
end
