cask "char" do
  version "1.0.59"
  sha256 "3d6842b654c092165c84623399efdc4b9e184b8cc648ba56cec0862112b61ed8"

  url "https://github.com/851-labs/Char/releases/download/v#{version}/char.dmg"
  name "Char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/Char"
  auto_updates true

  app "Char.app"
end
