cask "herdman" do
  version "0.1.12"
  sha256 "7bb2ce15bc7dd312c2f3917511c2862f7be682359b932bd8dc8eab0d06417983"

  url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/HerdMan-macOS.zip"
  name "HerdMan"
  desc "ACP chat client and local HerdMan server"
  homepage "https://github.com/851-labs/herdman"

  app "HerdMan.app"
end
