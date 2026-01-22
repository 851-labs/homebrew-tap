class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.14"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "bf1e92473ce9be8b4bbdd2fa3a34347863688e434c75541b4353d49b727b18e5"
  end

  def install
    bin.install "appdrop"
  end
end
