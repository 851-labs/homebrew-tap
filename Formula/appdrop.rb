class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.6"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "900f0f2fa1c557a0785afd0ad9c90791a94510c343ab0d171033b4c393895662"
  end

  def install
    bin.install "appdrop"
  end
end
