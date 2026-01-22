cask "char" do
  version "1.0.41"
  sha256 "10003fce568bc96fae54398fc10a7e9607fc8b6cb29ff1d59eaef1baffadcf36"

  url "https://github.com/851-labs/char/releases/download/v#{version}/char.dmg"
  name "char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/char"
  auto_updates true

  app "char.app"
end
