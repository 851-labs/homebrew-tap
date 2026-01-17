cask "char" do
  version "1.0.9"
  sha256 "a4912416e7c1c9217ce92fc53da6077d8598103d6377ae2a0f3a516d965214ca"

  url "https://github.com/851-labs/char/releases/download/v#{version}/char.dmg"
  name "char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/char"
  auto_updates true

  app "char.app"
end
