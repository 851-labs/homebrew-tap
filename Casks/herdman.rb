cask "herdman" do
  version "0.1.0"
  sha256 "31d5992c64f626e13e500c84c2cbd2529fff36b18f41385e816760f06c6bfb8d"

  url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/HerdMan-macOS.zip"
  name "HerdMan"
  desc "ACP chat client and local HerdMan server"
  homepage "https://github.com/851-labs/herdman"

  depends_on formula: "node"

  app "HerdMan.app"
end
