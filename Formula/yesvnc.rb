class Yesvnc < Formula
  desc "Manage VNC connections and open them in a local browser viewer"
  homepage "https://yesvnc.851.workers.dev"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/851-labs/yesVNC/releases/download/v0.1.3/yesvnc-darwin-arm64.tar.gz"
      sha256 "504d2f919db112416bd5906273cd9e1adfdd35f584cce452c14886ba1ad81353"
    else
      url "https://github.com/851-labs/yesVNC/releases/download/v0.1.3/yesvnc-darwin-x64.tar.gz"
      sha256 "30b8fe4772db833116fd003efbab3352f485415eefd33e2eb86bcbfa97d8bd5f"
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
