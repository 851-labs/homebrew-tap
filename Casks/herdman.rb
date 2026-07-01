cask "herdman" do
  version "0.1.15"
  sha256 "45ac989023260b797db73582adb79123d6efb0d24bb1386a5ab11da843b6e353"

  url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/HerdMan-macOS.zip"
  name "HerdMan"
  desc "ACP chat client and local HerdMan server"
  homepage "https://github.com/851-labs/herdman"

  app "HerdMan.app"
end
