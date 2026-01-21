class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.3"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "59056260010e08fe4e8f255c5e6c3370bcf9311257fd164dbba3268bb3371559"
  end

  def install
    bin.install "appdrop"
  end
end
