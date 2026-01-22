cask "char" do
  version "1.0.35"
  sha256 "f4d875c63469dfcf420e02287bb48ce26e1a49d20b1bba22a995fc9e6df4653f"

  url "https://github.com/851-labs/char/releases/download/v#{version}/char.dmg"
  name "char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/char"
  auto_updates true

  app "char.app"
end
