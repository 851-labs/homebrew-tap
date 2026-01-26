cask "window-in-picture" do
  version "1.0.22"
  sha256 "09d0929bdc1b9754ba31148e75e65fbd582a5e094181c185b2b94454fcec0508"

  url "https://github.com/851-labs/Window-in-Picture/releases/download/v#{version}/Window-in-Picture.dmg"
  name "Window-in-Picture"
  desc "Menubar picture-in-picture window mirror"
  homepage "https://github.com/851-labs/Window-in-Picture"
  auto_updates true

  app "Window-in-Picture.app"
end
