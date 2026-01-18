cask "char" do
  version "1.0.12"
  sha256 "3ff8dcf5ad5e0d2936783c463253d32fb4241d8f185f80b9ce8cf7fd0952826d"

  url "https://github.com/851-labs/char/releases/download/v#{version}/char.dmg"
  name "char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/char"
  auto_updates true

  app "char.app"
end
