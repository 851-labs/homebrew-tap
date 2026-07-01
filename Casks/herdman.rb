cask "herdman" do
  version "0.1.13"
  sha256 "1d25a46a3da35fc0b3f6128296fea0a263b0400d0499f82960615e3d0900747e"

  url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/HerdMan-macOS.zip"
  name "HerdMan"
  desc "ACP chat client and local HerdMan server"
  homepage "https://github.com/851-labs/herdman"

  app "HerdMan.app"
end
