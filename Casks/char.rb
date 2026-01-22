cask "char" do
  version "1.0.31"
  sha256 "2afe8891089d8c7660c23233a4b3475091d9ba8ce51df88261b71993057807fc"

  url "https://github.com/851-labs/char/releases/download/v#{version}/char.dmg"
  name "char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/char"
  auto_updates true

  app "char.app"
end
