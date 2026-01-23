cask "window-in-picture" do
  version "1.0.7"
  sha256 "0816b3a92dd61a7a4e0752e1da8b6f495bba283b15fcdfdbf627c773872dc2df"

  url "https://github.com/851-labs/Window-in-Picture/releases/download/v#{version}/WindowInPicture.dmg"
  name "Window-in-Picture"
  desc "Menubar picture-in-picture window mirror"
  homepage "https://github.com/851-labs/Window-in-Picture"
  auto_updates true

  app "WindowInPicture.app"
end
