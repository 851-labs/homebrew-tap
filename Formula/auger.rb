class Auger < Formula
  desc "Self-hosted HTTP tunnel"
  homepage "https://github.com/851-labs/auger"
  version "0.0.11"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/851-labs/auger/releases/download/v#{version}/auger-darwin-x64.tar.gz"
      sha256 "d0aa7732329e717cf61f4c40795d353397d244085dc910fc1a1c7651614b61fe"
    end

    on_arm do
      url "https://github.com/851-labs/auger/releases/download/v#{version}/auger-darwin-arm64.tar.gz"
      sha256 "fd7c3ebe28f23f912a954808b206719337bf99e1ce84944a817d0240adbfb9f7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/851-labs/auger/releases/download/v#{version}/auger-linux-x64.tar.gz"
      sha256 "8796f54bc5bd50605b866c63621f7d40fe620a364f9e38d8c11348f20f1bb571"
    end

    on_arm do
      url "https://github.com/851-labs/auger/releases/download/v#{version}/auger-linux-arm64.tar.gz"
      sha256 "505604549b8046cbe88f0e2d63eac49d8676fcc89559b5eb87dc30bf6b72e233"
    end
  end

  def install
    bin.install "auger"
  end
end
