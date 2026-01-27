cask "window-in-picture" do
  version "1.0.24"
  sha256 "6034df4f6a5c5938278fcbef997ebf18edd0bd14c5ce2617cf432d040a2c0865"

  url "https://github.com/851-labs/Window-in-Picture/releases/download/v#{version}/Window-in-Picture.dmg"
  name "Window-in-Picture"
  desc "Menubar picture-in-picture window mirror"
  homepage "https://github.com/851-labs/Window-in-Picture"
  auto_updates true

  app "Window-in-Picture.app"
end
