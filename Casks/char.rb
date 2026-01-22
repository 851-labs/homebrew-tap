cask "char" do
  version "1.0.34"
  sha256 "981c3980d7f2edf3d5408d8c18f04f0a2e235af8a2fa63b03bf531448a0f8275"

  url "https://github.com/851-labs/char/releases/download/v#{version}/char.dmg"
  name "char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/char"
  auto_updates true

  app "char.app"
end
