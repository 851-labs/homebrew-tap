cask "char" do
  version "1.0.38"
  sha256 "195bb45b45e99a70d84dac95c96149a30280b1d567212199a975647035795a62"

  url "https://github.com/851-labs/char/releases/download/v#{version}/char.dmg"
  name "char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/char"
  auto_updates true

  app "char.app"
end
