cask "char" do
  version "1.0.46"
  sha256 "d30bedd37d94dce9bd86c7d84aae9517a08951e9f0c7cd9e06f6f521a2dcedfa"

  url "https://github.com/851-labs/Char/releases/download/v#{version}/char.dmg"
  name "Char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/Char"
  auto_updates true

  app "char.app"
end
