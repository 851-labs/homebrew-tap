cask "char" do
  version "1.0.33"
  sha256 "21d58bfb0457d6eaa5f7925856435f4f9b8cf73d7fe0fcb9a6cbd9e30b62e194"

  url "https://github.com/851-labs/char/releases/download/v#{version}/char.dmg"
  name "char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/char"
  auto_updates true

  app "char.app"
end
