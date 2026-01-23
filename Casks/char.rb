cask "char" do
  version "1.0.47"
  sha256 "660da2dddd3ef3ea86cc12fb86ecabe96b4c073afbd3cd0135c0b68e1ca81173"

  url "https://github.com/851-labs/Char/releases/download/v#{version}/char.dmg"
  name "Char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/Char"
  auto_updates true

  app "char.app"
end
