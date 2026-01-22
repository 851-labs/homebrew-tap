class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.23"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "6a0d1fa22e8f7f7977f829182838986550d19a9b6d92651f67d5ec7f875c9e02"
  end

  def install
    bin.install "appdrop"
  end
end
