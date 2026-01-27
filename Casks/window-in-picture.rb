cask "window-in-picture" do
  version "1.0.30"
  sha256 "eb783a92e49fe6a74740619499f47417b333db562e06e50696c5ccba13fcf8f4"

  url "https://github.com/851-labs/Window-in-Picture/releases/download/v#{version}/Window-in-Picture.dmg"
  name "Window-in-Picture"
  desc "Menubar picture-in-picture window mirror"
  homepage "https://github.com/851-labs/Window-in-Picture"
  auto_updates true

  app "Window-in-Picture.app"
end
