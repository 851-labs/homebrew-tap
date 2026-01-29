cask "window-in-picture" do
  version "1.0.34"
  sha256 "df4d0e318a4785a9e7da62486879a7fdd0b6d715dff65ba62a795ccc3e82b57f"

  url "https://github.com/851-labs/Window-in-Picture/releases/download/v#{version}/Window-in-Picture.dmg"
  name "Window-in-Picture"
  desc "Menubar picture-in-picture window mirror"
  homepage "https://github.com/851-labs/Window-in-Picture"
  auto_updates true

  app "Window-in-Picture.app"
end
