cask "window-in-picture" do
  version "1.0.11"
  sha256 "790ab0c57c4ab61bfe166f3831ef2dc0c2ea629a8236187774f309f633db8aa0"

  url "https://github.com/851-labs/Window-in-Picture/releases/download/v#{version}/WindowInPicture.dmg"
  name "Window-in-Picture"
  desc "Menubar picture-in-picture window mirror"
  homepage "https://github.com/851-labs/Window-in-Picture"
  auto_updates true

  app "WindowInPicture.app"
end
