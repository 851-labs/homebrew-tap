class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.31"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "435764759b1a0356d84cffdaba1fca070e78a6187a665dc54498e1fa3abd187b"
  end

  def install
    bin.install "appdrop"
  end
end
