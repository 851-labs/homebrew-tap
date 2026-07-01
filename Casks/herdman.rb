cask "herdman" do
  version "0.1.3"
  sha256 "3943359dc8ce0070b48f57842b2652f8c72a2926f0c62c18a4c3da42c9156fdf"

  url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/HerdMan-macOS.zip"
  name "HerdMan"
  desc "ACP chat client and local HerdMan server"
  homepage "https://github.com/851-labs/herdman"

  depends_on formula: "node"

  app "HerdMan.app"
end
