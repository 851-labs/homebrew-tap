cask "window-in-picture" do
  version "1.0.16"
  sha256 "156a40d052f3ba032300345b5e99f2a4091fdc62ad38e4c1cc8dc8863bb5f048"

  url "https://github.com/851-labs/Window-in-Picture/releases/download/v#{version}/Window-in-Picture.dmg"
  name "Window-in-Picture"
  desc "Menubar picture-in-picture window mirror"
  homepage "https://github.com/851-labs/Window-in-Picture"
  auto_updates true

  app "Window-in-Picture.app"
end
