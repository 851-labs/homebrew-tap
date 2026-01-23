cask "char" do
  version "1.0.58"
  sha256 "0e79fe8dc1310a1409d763d5fd44e2973672ccdb3222c16639f303165b74e335"

  url "https://github.com/851-labs/Char/releases/download/v#{version}/char.dmg"
  name "Char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/Char"
  auto_updates true

  app "Char.app"
end
