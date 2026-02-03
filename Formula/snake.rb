class Snake < Formula
  desc "Terminal Snake built with OpenTUI"
  homepage "https://github.com/851-labs/snake"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/851-labs/snake/releases/download/v#{version}/snake-darwin-x64.tar.gz"
      sha256 "585f78328d1575714d4654939b430e8203db163c5947019499b08c8bc7bbcae8"
    end

    on_arm do
      url "https://github.com/851-labs/snake/releases/download/v#{version}/snake-darwin-arm64.tar.gz"
      sha256 "8b40bbca71546fe7e02dc0e8432e83f7a699bd964066da847dbd67a90e173081"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/851-labs/snake/releases/download/v#{version}/snake-linux-x64.tar.gz"
      sha256 "f73f2cda882378cf0253c286f32f0cd9dcbb42c85ce2f2931e0cd919162510da"
    end

    on_arm do
      url "https://github.com/851-labs/snake/releases/download/v#{version}/snake-linux-arm64.tar.gz"
      sha256 "db9fca5dff375e58fe78092b6797a2be9c618534bbcc7b9f24236731779959e4"
    end
  end

  def install
    bin.install "snake"
  end
end
