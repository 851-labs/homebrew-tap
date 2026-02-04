class Auger < Formula
  desc "Self-hosted HTTP tunnel"
  homepage "https://github.com/851-labs/auger"
  version "0.0.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/851-labs/auger/releases/download/v#{version}/auger-darwin-x64.tar.gz"
      sha256 "e9ad127c2c3020212118ab4681e8fa8d7da91892b94355f0a5bd1424f8b217af"
    end

    on_arm do
      url "https://github.com/851-labs/auger/releases/download/v#{version}/auger-darwin-arm64.tar.gz"
      sha256 "bde1be503508e19755e7c04469b82a33035cea5eabc66098cc6711ad0b8dc60a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/851-labs/auger/releases/download/v#{version}/auger-linux-x64.tar.gz"
      sha256 "d01a8243fb7c7fbf8489177bb707b1d7c4ccac03548e7d6a2d29a082a8cb25d5"
    end

    on_arm do
      url "https://github.com/851-labs/auger/releases/download/v#{version}/auger-linux-arm64.tar.gz"
      sha256 "d8405ecf966855840a8b17fd9bd92b1a012eb00ae0dd135c4e8e4847f495eadc"
    end
  end

  def install
    bin.install "auger"
  end
end
