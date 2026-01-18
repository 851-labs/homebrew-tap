cask "char" do
  version "1.0.11"
  sha256 "9ccac0e60131e7c9c67e7dcb5967050d6afa367e871744ab69f13398e4761db6"

  url "https://github.com/851-labs/char/releases/download/v#{version}/char.dmg"
  name "char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/char"
  auto_updates true

  app "char.app"
end
