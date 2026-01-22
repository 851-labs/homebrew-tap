class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.13"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "2cdb24b813cd2a4f98df2b9cfa92d9d563e67ba73c8d21d113eba3fd6b1367b3"
  end

  def install
    bin.install "appdrop"
  end
end
