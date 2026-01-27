cask "gardenbridge" do
  version "1.0.9"
  sha256 "249f4baf73e69dc740a48e5ba347b82f1561cd3149a74268a223a3c3ad92fabb"

  url "https://github.com/851-labs/GardenBridge/releases/download/v#{version}/GardenBridge.dmg"
  name "GardenBridge"
  desc "macOS menu bar app that gives AI assistants control over your Mac"
  homepage "https://github.com/851-labs/GardenBridge"
  auto_updates true

  app "GardenBridge.app"
end
