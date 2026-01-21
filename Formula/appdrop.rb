class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.5"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "2e26cb1300463ff189dfe48f69aadc6d680ae0da40db237637069c14b0376022"
  end

  def install
    bin.install "appdrop"
  end
end
