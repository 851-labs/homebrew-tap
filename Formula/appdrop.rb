class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.22"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "9de959fc4aa533fa965e1dc45998091d3ecf8b0402bd87716effc2207a660c42"
  end

  def install
    bin.install "appdrop"
  end
end
