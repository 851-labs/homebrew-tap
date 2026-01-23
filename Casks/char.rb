cask "char" do
  version "1.0.56"
  sha256 "6b0c214c248b24838755fc48e1c3ae249ae8c89e6806e18580bccbb3a484551c"

  url "https://github.com/851-labs/Char/releases/download/v#{version}/char.dmg"
  name "Char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/Char"
  auto_updates true

  app "char.app"
end
