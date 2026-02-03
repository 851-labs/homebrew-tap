class Snake < Formula
  desc "Terminal Snake built with OpenTUI"
  homepage "https://github.com/851-labs/snake"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/851-labs/snake/releases/download/v#{version}/snake-darwin-x64.tar.gz"
      sha256 "5e93bac6788320d98429ef840700e1694ec1b09767d03cd6dde795324912e988"
    end

    on_arm do
      url "https://github.com/851-labs/snake/releases/download/v#{version}/snake-darwin-arm64.tar.gz"
      sha256 "1a1e84a7fa06aed97304a22ec89da30b1caeab5065e38d8eb2cb516a92668a89"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/851-labs/snake/releases/download/v#{version}/snake-linux-x64.tar.gz"
      sha256 "d81d3d557f60ba1ba2d7d0bbdca772a390a93dedabba88635f1f17483da848d7"
    end

    on_arm do
      url "https://github.com/851-labs/snake/releases/download/v#{version}/snake-linux-arm64.tar.gz"
      sha256 "7bcbf28e3ea07dade0f2bd9e98f5a40b770036112871f607d81fc0c050fe8fb5"
    end
  end

  def install
    bin.install "snake"
  end
end
