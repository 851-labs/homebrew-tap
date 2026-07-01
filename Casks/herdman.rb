cask "herdman" do
  version "0.1.9"
  sha256 "47b643c75a586b968236feaacc15bcb4cc860e11042694a1a364e0cee8958de0"

  url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/HerdMan-macOS.zip"
  name "HerdMan"
  desc "ACP chat client and local HerdMan server"
  homepage "https://github.com/851-labs/herdman"

  app "HerdMan.app"
end
