class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.26"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "48d2b46f09b963865d40abc487cc0f977f0c303180a5c581fb8ddff0cec1089c"
  end

  def install
    bin.install "appdrop"
  end
end
