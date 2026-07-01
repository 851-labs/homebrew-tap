cask "herdman" do
  version "0.1.14"
  sha256 "f7291e5ef6bf2ea31468ad1d8cfe271a9703a98437286ea8bd02aa30f2b86a47"

  url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/HerdMan-macOS.zip"
  name "HerdMan"
  desc "ACP chat client and local HerdMan server"
  homepage "https://github.com/851-labs/herdman"

  app "HerdMan.app"
end
