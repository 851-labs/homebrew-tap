class Appdrop < Formula
  desc "Zero-config macOS release CLI for building, signing, and notarizing apps"
  homepage "https://github.com/851-labs/appdrop"
  version "0.1.25"

  on_arm do
    url "https://github.com/851-labs/appdrop/releases/download/v#{version}/appdrop"
    sha256 "0dcf7c6166424f54168a50f234b7f040c0c56499629479a186b734acc759baf5"
  end

  def install
    bin.install "appdrop"
  end
end
