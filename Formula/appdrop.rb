class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.20"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "a8be032962e9cac29dcec7dca35dc7d6be98c745b65a733895aea0d80aadb0ce"
  end

  def install
    bin.install "appdrop"
  end
end
