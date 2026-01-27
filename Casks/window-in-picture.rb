cask "window-in-picture" do
  version "1.0.23"
  sha256 "d674c19c1c864c256662e1f1dac279f6769f60470ca1a0056a9f612f2b0c6399"

  url "https://github.com/851-labs/Window-in-Picture/releases/download/v#{version}/Window-in-Picture.dmg"
  name "Window-in-Picture"
  desc "Menubar picture-in-picture window mirror"
  homepage "https://github.com/851-labs/Window-in-Picture"
  auto_updates true

  app "Window-in-Picture.app"
end
