cask "char" do
  version "1.0.60"
  sha256 "17c22762c6bcbf2a921f2e45797aa5f0d205cce3d482c50aaaa752d8cc684035"

  url "https://github.com/851-labs/Char/releases/download/v#{version}/char.dmg"
  name "Char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/Char"
  auto_updates true

  app "Char.app"
end
