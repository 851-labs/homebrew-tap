class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.12"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "14b1326db4f25f782531af63d0e8e166c00a641989017432eed8b3d937ca3ce2"
  end

  def install
    bin.install "appdrop"
  end
end
