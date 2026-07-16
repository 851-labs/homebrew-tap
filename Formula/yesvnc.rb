class Yesvnc < Formula
  desc "Manage VNC connections and open them in a local browser viewer"
  homepage "https://yesvnc.851.workers.dev"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/851-labs/yesVNC/releases/download/v0.1.0/yesvnc-darwin-arm64.tar.gz"
      sha256 "c3aa50d84f292c1c0a10397db1d5b0d7926adfa2902b1f742b32b97b7a911f0d"
    else
      url "https://github.com/851-labs/yesVNC/releases/download/v0.1.0/yesvnc-darwin-x64.tar.gz"
      sha256 "adcfa08ec7804583630b8c2ed7667c2e200d7e16a82aa4f3f8c55265edc8881b"
    end
  end

  def install
    libexec.install "bin", "share"
    bin.install_symlink libexec/"bin/yesvnc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yesvnc --version")
  end
end
