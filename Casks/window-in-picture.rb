cask "window-in-picture" do
  version "1.0.18"
  sha256 "6db4237015e8b3203951174486a1506ce88311679e1853ebc858437ee015d881"

  url "https://github.com/851-labs/Window-in-Picture/releases/download/v#{version}/Window-in-Picture.dmg"
  name "Window-in-Picture"
  desc "Menubar picture-in-picture window mirror"
  homepage "https://github.com/851-labs/Window-in-Picture"
  auto_updates true

  app "Window-in-Picture.app"
end
