cask "char" do
  version "1.0.30"
  sha256 "323c6d3bce9cd4af7110ee65e0232af16c057d692cba0a7b2f60d482dfe7872d"

  url "https://github.com/851-labs/char/releases/download/v#{version}/char.dmg"
  name "char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/char"
  auto_updates true

  app "char.app"
end
