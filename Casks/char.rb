cask "char" do
  version "1.0.15"
  sha256 "094964cb407f4edc39164205efa13e0a9dbfa9d60fee8cd8729017a2bac71f16"

  url "https://github.com/851-labs/char/releases/download/v#{version}/char.dmg"
  name "char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/char"
  auto_updates true

  app "char.app"
end
