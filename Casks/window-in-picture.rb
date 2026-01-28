cask "window-in-picture" do
  version "1.0.33"
  sha256 "961c9565c9614f17b8df99348f39905d4b8160d82963ea7e0f6011452e024509"

  url "https://github.com/851-labs/Window-in-Picture/releases/download/v#{version}/Window-in-Picture.dmg"
  name "Window-in-Picture"
  desc "Menubar picture-in-picture window mirror"
  homepage "https://github.com/851-labs/Window-in-Picture"
  auto_updates true

  app "Window-in-Picture.app"
end
