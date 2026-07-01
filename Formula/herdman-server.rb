class HerdmanServer < Formula
  desc "Local and remote HerdMan ACP server"
  homepage "https://github.com/851-labs/HerdMan-v2"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/851-labs/HerdMan-v2/releases/download/v#{version}/herdman-server-darwin-arm64.tar.gz"
    sha256 "1fa2a282712ba9339d5490eb3475dd5f5972d8801d07752f1c21e97c89c9696d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/851-labs/HerdMan-v2/releases/download/v#{version}/herdman-server-linux-x64.tar.gz"
    sha256 "2502f8332ecc068a875545612f14a907bde4bf1e0a60f95c637faf0880e992ae"
  else
    odie "No HerdMan server archive is available for this platform. Supported targets: darwin-arm64, linux-x64"
  end

  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/herdman-server"
    bin.install_symlink libexec/"bin/herdman-terminal-proxy"
  end

  test do
    assert_match "Missing --server", shell_output("#{bin}/herdman-terminal-proxy 2>&1", 1)
  end
end
