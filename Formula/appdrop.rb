class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.2"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "3959e84fdda05ab26dc5e6ef9720b4ac678fa3638ffbc49c0591526d7c94a411"
  end

  def install
    bin.install "appdrop"
  end
end
