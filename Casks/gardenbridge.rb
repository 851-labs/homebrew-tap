cask "gardenbridge" do
  version "1.0.4"
  sha256 "3bee516b3420fc53fdd0e2ef561b686d56d5bca05f83e60e96b9db765360f097"

  url "https://github.com/851-labs/GardenBridge/releases/download/v#{version}/GardenBridge.dmg"
  name "GardenBridge"
  desc "macOS menu bar app that gives AI assistants control over your Mac"
  homepage "https://github.com/851-labs/GardenBridge"
  auto_updates true

  app "GardenBridge.app"
end
