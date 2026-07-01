cask "herdman" do
  version "0.1.5"
  sha256 "12c864b66d683f16b1ba4aff8af89143fed6499bd5b9cb9d6649c81f9a73aef9"

  url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/HerdMan-macOS.zip"
  name "HerdMan"
  desc "ACP chat client and local HerdMan server"
  homepage "https://github.com/851-labs/herdman"

  depends_on formula: "node"

  app "HerdMan.app"
end
