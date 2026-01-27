cask "window-in-picture" do
  version "1.0.25"
  sha256 "3ffab46af96c8f9e6baaa59c27b8f0833479e9fb8aaab1ee48bc4641e9aa3e15"

  url "https://github.com/851-labs/Window-in-Picture/releases/download/v#{version}/Window-in-Picture.dmg"
  name "Window-in-Picture"
  desc "Menubar picture-in-picture window mirror"
  homepage "https://github.com/851-labs/Window-in-Picture"
  auto_updates true

  app "Window-in-Picture.app"
end
