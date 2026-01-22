class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.24"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "4538f8cd165b02c7b435ac57f964e80ca173966f905de63f523e078735ec1489"
  end

  def install
    bin.install "appdrop"
  end
end
