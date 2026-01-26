cask "gardenbridge" do
  version "1.0.2"
  sha256 "64a74fa1b0d461b855c9ed64e1d651e91285765e2936fb948c8b2a9a238415ec"

  url "https://github.com/851-labs/GardenBridge/releases/download/v#{version}/GardenBridge.dmg"
  name "GardenBridge"
  desc "macOS menu bar app that gives AI assistants control over your Mac"
  homepage "https://github.com/851-labs/GardenBridge"
  auto_updates true

  app "GardenBridge.app"
end
