class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.4"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "78e5fac7e3130d61f088cb0b01649324b5ae8295a50cd21acf0974946b9ac61d"
  end

  def install
    bin.install "appdrop"
  end
end
