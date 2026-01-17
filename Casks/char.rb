cask "char" do
  version "1.0.6"
  sha256 "3e7cb1bcfd0da07b20b7e922ccb07585a36398e29cb4fb9af458d1a102c2ec6d"

  url "https://github.com/851-labs/char/releases/download/v#{version}/char.dmg"
  name "char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/char"

  app "char.app"
end
