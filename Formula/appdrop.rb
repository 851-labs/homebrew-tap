class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.11"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "8e26ff7805b0137fe684ef0ad5cdcc00bb00a4475880344eae8a5aec91c9319a"
  end

  def install
    bin.install "appdrop"
  end
end
