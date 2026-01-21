class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.1"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "2ae2735c1b185ccb57e0f5818637b1da1d6400be976a6aafa84aa02c9a2a0e1e"
  end

  def install
    bin.install "appdrop"
  end
end
