cask "window-in-picture" do
  version "1.0.6"
  sha256 "fbc23ce74d40e569e5e9637cefa7bf6b06878758528967069022dae85a7bf960"

  url "https://github.com/851-labs/Window-in-Picture/releases/download/v#{version}/WindowInPicture.dmg"
  name "Window-in-Picture"
  desc "Menubar picture-in-picture window mirror"
  homepage "https://github.com/851-labs/Window-in-Picture"
  auto_updates true

  app "WindowInPicture.app"
end
