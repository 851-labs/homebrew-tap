cask "char" do
  version "1.0.20"
  sha256 "ede6e8dcd874dd54c62cea8300d18a84cdf6052a9c69b9c88fa1ec406b7b5cfa"

  url "https://github.com/851-labs/char/releases/download/v#{version}/char.dmg"
  name "char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/char"
  auto_updates true

  app "char.app"
end
