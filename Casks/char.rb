cask "char" do
  version "1.0.43"
  sha256 "810b301e3e111f5a90301110806340688a69e86c58dffabc31fc28cb324c0afb"

  url "https://github.com/851-labs/char/releases/download/v#{version}/char.dmg"
  name "char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/char"
  auto_updates true

  app "char.app"
end
