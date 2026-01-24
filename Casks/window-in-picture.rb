cask "window-in-picture" do
  version "1.0.15"
  sha256 "4de2c1397dc4366282a8aed415e1e21ecbfc1f880aa0ec3b9cfd5db8f954abf9"

  url "https://github.com/851-labs/Window-in-Picture/releases/download/v#{version}/Window-in-Picture.dmg"
  name "Window-in-Picture"
  desc "Menubar picture-in-picture window mirror"
  homepage "https://github.com/851-labs/Window-in-Picture"
  auto_updates true

  app "Window-in-Picture.app"
end
