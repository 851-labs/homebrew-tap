cask "char" do
  version "1.0.14"
  sha256 "e6c139d7830e8fbb4613083be45f788be0137e1cea698211a2efc0e43ba86d2d"

  url "https://github.com/851-labs/char/releases/download/v#{version}/char.dmg"
  name "char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/char"
  auto_updates true

  app "char.app"
end
