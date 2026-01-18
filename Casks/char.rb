cask "char" do
  version "1.0.16"
  sha256 "310dc53937a0601e3c42b8afd27a73907d9dd1009bc23c5d641aaed633ea9afa"

  url "https://github.com/851-labs/char/releases/download/v#{version}/char.dmg"
  name "char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/char"
  auto_updates true

  app "char.app"
end
