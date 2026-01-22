class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.16"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "0ea95a6d2a9676930c1dbbe05601d8dfd04596294fa06c025c00102d72f15635"
  end

  def install
    bin.install "appdrop"
  end
end
