class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.7"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "5640ecee4219b058c91766e1dfa18c96afca9d093c206cb8fa29141a6a672d73"
  end

  def install
    bin.install "appdrop"
  end
end
