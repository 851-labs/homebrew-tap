class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.27"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "e4601ad3fb1ede38112e30c03db3036d946f12f0746fa4ea7aadd57bbfbe9c44"
  end

  def install
    bin.install "appdrop"
  end
end
