cask "gardenbridge" do
  version "1.0.0"
  sha256 "b4d9b40e3446f317bca5526273a90f60ec1674e767920e660b94312404dd72c5"

  url "https://github.com/851-labs/GardenBridge/releases/download/v#{version}/GardenBridge.dmg"
  name "GardenBridge"
  desc "macOS menu bar app that gives AI assistants control over your Mac"
  homepage "https://github.com/851-labs/GardenBridge"
  auto_updates true

  app "GardenBridge.app"
end
