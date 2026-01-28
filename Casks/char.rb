cask "char" do
  version "1.0.63"
  sha256 "8d08da381abffb3aee172b0eec442299db9bc65537414f6d99b735c7b460978a"

  url "https://github.com/851-labs/Char/releases/download/v#{version}/char.dmg"
  name "Char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/Char"
  auto_updates true

  app "Char.app"
end
