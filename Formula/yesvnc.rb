class Yesvnc < Formula
  desc "Manage VNC connections and open them in a local browser viewer"
  homepage "https://yesvnc.851.workers.dev"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/851-labs/yesVNC/releases/download/v0.1.2/yesvnc-darwin-arm64.tar.gz"
      sha256 "68e64cfc36f5787c80ebb7bbe7965ae6d766bbabba13ce8424883b00b57875f4"
    else
      url "https://github.com/851-labs/yesVNC/releases/download/v0.1.2/yesvnc-darwin-x64.tar.gz"
      sha256 "a6dfa57bc955996c3800bbed09736c2099462cc74fe967796e5883cb8cdbec76"
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
