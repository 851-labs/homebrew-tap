cask "char" do
  version "1.0.22"
  sha256 "8fb0d0d2bc61aecc94b9bc823ae28739a97eebccc47be9fec48014415ec59b9c"

  url "https://github.com/851-labs/char/releases/download/v#{version}/char.dmg"
  name "char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/char"
  auto_updates true

  app "char.app"
end
