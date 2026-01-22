class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.15"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "6ef5118dd1e375eb9a3dab71f85b2c13cdce017b8a1cf03c0b5ad1785df30f65"
  end

  def install
    bin.install "appdrop"
  end
end
