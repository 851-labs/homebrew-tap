class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.19"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "7dedb31b4b9bda58b7183f46c4199c6783cd48c8ff3b470ffb580c1c2ec97c33"
  end

  def install
    bin.install "appdrop"
  end
end
