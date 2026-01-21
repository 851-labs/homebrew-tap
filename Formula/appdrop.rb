class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.10"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "5fe01657ab3f9d58760fe56ac85954553b35599b966dce150d6d5b791b0905dc"
  end

  def install
    bin.install "appdrop"
  end
end
