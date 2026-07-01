cask "herdman" do
  version "0.1.4"
  sha256 "6b659b101e6bcccd864072d4c104c86e0c17a2af0762e751138243c8c9cd3d3a"

  url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/HerdMan-macOS.zip"
  name "HerdMan"
  desc "ACP chat client and local HerdMan server"
  homepage "https://github.com/851-labs/herdman"

  depends_on formula: "node"

  app "HerdMan.app"
end
