cask "char" do
  version "1.0.62"
  sha256 "2c85752a11e9952aa4613782e001794ccd1e1b614de2a2ece9dd9fca6d1148cf"

  url "https://github.com/851-labs/Char/releases/download/v#{version}/char.dmg"
  name "Char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/Char"
  auto_updates true

  app "Char.app"
end
