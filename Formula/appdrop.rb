class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.9"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "34727db14f20d460c17bf57ec9f4939726a01e6dcd12cd67164fea3b5cbf3f96"
  end

  def install
    bin.install "appdrop"
  end
end
