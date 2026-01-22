cask "char" do
  version "1.0.32"
  sha256 "faac5ba88a5d37782e688cf4f48e67fd82c9ad0c777d05befdca6042e195a647"

  url "https://github.com/851-labs/char/releases/download/v#{version}/char.dmg"
  name "char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/char"
  auto_updates true

  app "char.app"
end
