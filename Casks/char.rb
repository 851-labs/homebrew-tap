cask "char" do
  version "1.0.10"
  sha256 "a730796db92d0d08af3a4bd687db4ed7287257a86428ddde7ab0478d45320ba8"

  url "https://github.com/851-labs/char/releases/download/v#{version}/char.dmg"
  name "char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/char"
  auto_updates true

  app "char.app"
end
