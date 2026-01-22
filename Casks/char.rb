cask "char" do
  version "1.0.40"
  sha256 "803347695234cfd67af7f8e3d072bd88e536147674f8b9e7305bd90013ea55d4"

  url "https://github.com/851-labs/char/releases/download/v#{version}/char.dmg"
  name "char"
  desc "Word counter tool"
  homepage "https://github.com/851-labs/char"
  auto_updates true

  app "char.app"
end
