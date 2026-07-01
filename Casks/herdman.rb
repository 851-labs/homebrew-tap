cask "herdman" do
  version "0.1.0"
  sha256 "0924feba69c36501119f29827e0980eeb94d748105236da87a9b2bf507f7856a"

  url "https://github.com/851-labs/HerdMan-v2/releases/download/v#{version}/HerdMan-macOS.zip"
  name "HerdMan"
  desc "ACP chat client and local HerdMan server"
  homepage "https://github.com/851-labs/HerdMan-v2"

  depends_on formula: "node"

  app "HerdMan.app"
end
