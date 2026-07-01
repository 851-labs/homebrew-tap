cask "herdman" do
  version "0.1.8"
  sha256 "48de142b37786e4e20f0018f99a601b85ed7af276b77102d652315fe57745564"

  url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/HerdMan-macOS.zip"
  name "HerdMan"
  desc "ACP chat client and local HerdMan server"
  homepage "https://github.com/851-labs/herdman"

  app "HerdMan.app"
end
