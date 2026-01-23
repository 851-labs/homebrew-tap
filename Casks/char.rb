cask "char" do
  version "1.0.57"
  sha256 "26d54edba5625a344c7741def54f700415c1ae8e2f33d4c5e7773ff8c551c04e"

  url "https://github.com/851-labs/Char/releases/download/v#{version}/char.dmg"
  name "Char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/Char"
  auto_updates true

  app "Char.app"
end
