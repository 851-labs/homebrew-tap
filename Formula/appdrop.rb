class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.0"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "71a4a70aaf570d5e497dc95f1c3d76402082cbc984b33668973fd8e883dec485"
  end

  def install
    bin.install "appdrop"
  end
end
