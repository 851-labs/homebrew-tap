cask "window-in-picture" do
  version "1.0.29"
  sha256 "7f49488b4e534e208fb395652e2f6cec8713245094cb68dab1062ef57caf9e97"

  url "https://github.com/851-labs/Window-in-Picture/releases/download/v#{version}/Window-in-Picture.dmg"
  name "Window-in-Picture"
  desc "Menubar picture-in-picture window mirror"
  homepage "https://github.com/851-labs/Window-in-Picture"
  auto_updates true

  app "Window-in-Picture.app"
end
