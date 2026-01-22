class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.17"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "4ae14993bf0f4abf4b403d1584b7a73c12f36ec12d4505f318477ed1b0c43d92"
  end

  def install
    bin.install "appdrop"
  end
end
