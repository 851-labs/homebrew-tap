class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.18"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "ec2b72e471d86b2c0f67f63b815b5db85763b377cc1c588f7707b11614274b4e"
  end

  def install
    bin.install "appdrop"
  end
end
