class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.28"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "7192b2a432237381d101d3c8489431a57423672dcf45cb31333516c048d6d851"
  end

  def install
    bin.install "appdrop"
  end
end
