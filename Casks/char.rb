cask "char" do
  version "1.0.39"
  sha256 "fc32a962423ecdfe8933da331d0715aba73acb111dbf4ec326f920832c8c2a4a"

  url "https://github.com/851-labs/char/releases/download/v#{version}/char.dmg"
  name "char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/char"
  auto_updates true

  app "char.app"
end
