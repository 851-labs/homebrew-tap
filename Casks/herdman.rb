cask "herdman" do
  version "0.1.6"
  sha256 "102ebba66f5adf2b98483713ce985d823e42511bccef7518c0db2facb34c814d"

  url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/HerdMan-macOS.zip"
  name "HerdMan"
  desc "ACP chat client and local HerdMan server"
  homepage "https://github.com/851-labs/herdman"

  depends_on formula: "node"

  app "HerdMan.app"
end
