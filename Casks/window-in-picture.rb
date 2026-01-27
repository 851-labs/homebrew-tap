cask "window-in-picture" do
  version "1.0.28"
  sha256 "8786afa5a1b26400055115b6736270ed18bee6f2eb711c2b7bcc05d09c42ddcf"

  url "https://github.com/851-labs/Window-in-Picture/releases/download/v#{version}/Window-in-Picture.dmg"
  name "Window-in-Picture"
  desc "Menubar picture-in-picture window mirror"
  homepage "https://github.com/851-labs/Window-in-Picture"
  auto_updates true

  app "Window-in-Picture.app"
end
