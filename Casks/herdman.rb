cask "herdman" do
  version "0.1.2"
  sha256 "b2c43406876f19919ddb3bc50203420d11bc4bdb5e1d9c386a50cc8c456ad0ee"

  url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/HerdMan-macOS.zip"
  name "HerdMan"
  desc "ACP chat client and local HerdMan server"
  homepage "https://github.com/851-labs/herdman"

  depends_on formula: "node"

  app "HerdMan.app"
end
