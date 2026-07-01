cask "herdman" do
  version "0.1.7"
  sha256 "f641bbc707974c1959330b1f5b001bcae129f7658143dd0b6945b2c517a39134"

  url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/HerdMan-macOS.zip"
  name "HerdMan"
  desc "ACP chat client and local HerdMan server"
  homepage "https://github.com/851-labs/herdman"

  depends_on formula: "node"

  app "HerdMan.app"
end
