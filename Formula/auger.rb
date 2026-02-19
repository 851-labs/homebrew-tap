class Auger < Formula
  desc "Self-hosted HTTP tunnel"
  homepage "https://github.com/851-labs/auger"
  version "0.0.12"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/851-labs/auger/releases/download/v#{version}/auger-darwin-x64.tar.gz"
      sha256 "0a224f6b8f59b2de7f6c013a65617b3f657fe720515358ab7e6086f289b7dddb"
    end

    on_arm do
      url "https://github.com/851-labs/auger/releases/download/v#{version}/auger-darwin-arm64.tar.gz"
      sha256 "7d44610b786afad31ebb2bdbaeda08849f5d5b0f3f039c84eef3d8af288df270"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/851-labs/auger/releases/download/v#{version}/auger-linux-x64.tar.gz"
      sha256 "7734f5ed22d733667084a0701a688a7c3e69414f9615fb8e49e1c8caea9a73f9"
    end

    on_arm do
      url "https://github.com/851-labs/auger/releases/download/v#{version}/auger-linux-arm64.tar.gz"
      sha256 "e6211332cf488e34422a1dc3d58c08b1dd35424807ed74cc25aabe07825b3725"
    end
  end

  def install
    bin.install "auger"
  end
end
