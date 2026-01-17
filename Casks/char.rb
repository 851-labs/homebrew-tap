cask "char" do
  version "1.0.8"
  sha256 "b95cb1804ce8ba7aaf3c024c1c6ae40185a1da8c9a89a85c3ed2125ebcf45699"

  url "https://github.com/851-labs/char/releases/download/v#{version}/char.dmg"
  name "char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/char"

  app "char.app"
end
