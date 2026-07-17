class Yesvnc < Formula
  desc "Manage VNC connections and open them in a local browser viewer"
  homepage "https://yesvnc.851.workers.dev"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/851-labs/yesVNC/releases/download/v0.1.4/yesvnc-darwin-arm64.tar.gz"
      sha256 "7fef105cd5e58cddd277417a685be15b360aff4482f27392054e5026f4ee70a1"
    else
      url "https://github.com/851-labs/yesVNC/releases/download/v0.1.4/yesvnc-darwin-x64.tar.gz"
      sha256 "70c3f1ce8438c530ca52e87836ee06bdcc3966c013670704c915aecfc779c2a7"
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
