class Yesvnc < Formula
  desc "Manage VNC connections and open them in a local browser viewer"
  homepage "https://yesvnc.851.workers.dev"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/851-labs/yesVNC/releases/download/v0.1.1/yesvnc-darwin-arm64.tar.gz"
      sha256 "eac6b9791411ac945080798b5a9a785235ec559bf42a33255947c95aa30a7e27"
    else
      url "https://github.com/851-labs/yesVNC/releases/download/v0.1.1/yesvnc-darwin-x64.tar.gz"
      sha256 "121a40236d85fffdc2ac6e204b4d24904078433354031f0878d086598c25bc0e"
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
