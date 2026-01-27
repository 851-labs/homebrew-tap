cask "window-in-picture" do
  version "1.0.26"
  sha256 "c6bc25783bf3794fb328dfbd69341ef9ee770cc7c5ddb298e09afde735dac469"

  url "https://github.com/851-labs/Window-in-Picture/releases/download/v#{version}/Window-in-Picture.dmg"
  name "Window-in-Picture"
  desc "Menubar picture-in-picture window mirror"
  homepage "https://github.com/851-labs/Window-in-Picture"
  auto_updates true

  app "Window-in-Picture.app"
end
