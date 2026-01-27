cask "char" do
  version "1.0.61"
  sha256 "4b87325fc2fac284ed4cff4435b940ab858411545a215979c71298bff70ccc19"

  url "https://github.com/851-labs/Char/releases/download/v#{version}/char.dmg"
  name "Char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/Char"
  auto_updates true

  app "Char.app"
end
