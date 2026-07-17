class Yesvnc < Formula
  desc "Manage VNC connections and open them in a local browser viewer"
  homepage "https://yesvnc.851.workers.dev"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/851-labs/yesVNC/releases/download/v0.1.5/yesvnc-darwin-arm64.tar.gz"
      sha256 "49e60a3fb4e6430aca7799a31426a7e683acc5c737b3862cb99dcdf315453001"
    else
      url "https://github.com/851-labs/yesVNC/releases/download/v0.1.5/yesvnc-darwin-x64.tar.gz"
      sha256 "2ac3236b0a87862f39af4d83e545f48325e02d97b0abc65c7b585aeb9f8942d7"
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
