cask "window-in-picture" do
  version "1.0.31"
  sha256 "b359f4eb387bce457b7f8baba647ef96501002c405590949a6aaa3dd0311f0ad"

  url "https://github.com/851-labs/Window-in-Picture/releases/download/v#{version}/Window-in-Picture.dmg"
  name "Window-in-Picture"
  desc "Menubar picture-in-picture window mirror"
  homepage "https://github.com/851-labs/Window-in-Picture"
  auto_updates true

  app "Window-in-Picture.app"
end
