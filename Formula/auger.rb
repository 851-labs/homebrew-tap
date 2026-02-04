class Auger < Formula
  desc "Self-hosted HTTP tunnel"
  homepage "https://github.com/851-labs/auger"
  version "0.0.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/851-labs/auger/releases/download/v#{version}/auger-darwin-x64.tar.gz"
      sha256 "f0ff987d7cff9a493946ba9106a464000e561752405960a3723cedc1ccfab080"
    end

    on_arm do
      url "https://github.com/851-labs/auger/releases/download/v#{version}/auger-darwin-arm64.tar.gz"
      sha256 "d93f7d35beb1323f570f0ccd8c7e7beb84c0469daaeac7717bbe2f5f7644a4e6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/851-labs/auger/releases/download/v#{version}/auger-linux-x64.tar.gz"
      sha256 "c2d28294136f5fd3c58edc69f10efed121c63fb05ee8b8d10cdb6834c12293b2"
    end

    on_arm do
      url "https://github.com/851-labs/auger/releases/download/v#{version}/auger-linux-arm64.tar.gz"
      sha256 "0f1f2e06dc6dcb313c9048ed77a3dead644afbc120242f61bf07d0961733293f"
    end
  end

  def install
    bin.install "auger"
  end
end
