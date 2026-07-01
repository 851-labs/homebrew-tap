cask "herdman" do
  version "0.1.11"
  sha256 "7c6a5fc230720ec87f1d897b3625306aa813063f2ead7e674f9c21227b03d737"

  url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/HerdMan-macOS.zip"
  name "HerdMan"
  desc "ACP chat client and local HerdMan server"
  homepage "https://github.com/851-labs/herdman"

  app "HerdMan.app"
end
