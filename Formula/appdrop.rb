class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.8"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "b2c6b996d0c2b99dd0787cc879ebd24e47ca809a28493828c5b7f336e98c88ba"
  end

  def install
    bin.install "appdrop"
  end
end
