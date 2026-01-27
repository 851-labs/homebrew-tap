cask "window-in-picture" do
  version "1.0.27"
  sha256 "3e5860aaec28ee19fe0548f553f32be11422f811de668e7df4c7b7f7e2cdd862"

  url "https://github.com/851-labs/Window-in-Picture/releases/download/v#{version}/Window-in-Picture.dmg"
  name "Window-in-Picture"
  desc "Menubar picture-in-picture window mirror"
  homepage "https://github.com/851-labs/Window-in-Picture"
  auto_updates true

  app "Window-in-Picture.app"
end
