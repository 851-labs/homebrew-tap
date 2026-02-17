class Auger < Formula
  desc "Self-hosted HTTP tunnel"
  homepage "https://github.com/851-labs/auger"
  version "0.0.9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/851-labs/auger/releases/download/v#{version}/auger-darwin-x64.tar.gz"
      sha256 "0327f01082253c8021b2b72d97f06db0184da7c8f2b51aaef28329861323efaa"
    end

    on_arm do
      url "https://github.com/851-labs/auger/releases/download/v#{version}/auger-darwin-arm64.tar.gz"
      sha256 "0efe55ee67806b6d7407a87ae3ababd887ae77eb9ba28b67b46286cff25150f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/851-labs/auger/releases/download/v#{version}/auger-linux-x64.tar.gz"
      sha256 "cdc8221f39794a49442841f6a20a881ab2e006250d4e64c1fbef68b4d01e9aab"
    end

    on_arm do
      url "https://github.com/851-labs/auger/releases/download/v#{version}/auger-linux-arm64.tar.gz"
      sha256 "12828b8801d371326b9ca37601e80630ece5a89a16a0eb86027443c90b6d8ec8"
    end
  end

  def install
    bin.install "auger"
  end
end
