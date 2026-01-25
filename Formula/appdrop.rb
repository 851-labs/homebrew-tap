class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.29"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "e7d4ec5c37ffa31a96fbc640f3c82a0c16386a26ad2c8f6f5595a574024a47f7"
  end

  def install
    bin.install "appdrop"
  end
end
