cask "window-in-picture" do
  version "1.0.32"
  sha256 "3617eb7dbafd2a12805f038018af21cc206ceb34a9111b47b5d45c85c6d6cfff"

  url "https://github.com/851-labs/Window-in-Picture/releases/download/v#{version}/Window-in-Picture.dmg"
  name "Window-in-Picture"
  desc "Menubar picture-in-picture window mirror"
  homepage "https://github.com/851-labs/Window-in-Picture"
  auto_updates true

  app "Window-in-Picture.app"
end
