cask "window-in-picture" do
  version "1.0.5"
  sha256 "3e057727c4b2fae97dc4320797a99d1cc567aaf4a67765ef1e3ae15f52363b1e"

  url "https://github.com/851-labs/Window-in-Picture/releases/download/v#{version}/WindowInPicture.dmg"
  name "Window-in-Picture"
  desc "Menubar picture-in-picture window mirror"
  homepage "https://github.com/851-labs/Window-in-Picture"
  auto_updates true

  app "WindowInPicture.app"
end
