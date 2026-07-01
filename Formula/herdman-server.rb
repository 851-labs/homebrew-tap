class HerdmanServer < Formula
  desc "Local and remote HerdMan ACP server"
  homepage "https://github.com/851-labs/herdman"
  version "0.1.8"

  if OS.mac? && Hardware::CPU.arm?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/herdman-server-darwin-arm64.tar.gz"
    sha256 "e94fe4239e680dba53639d3d18e6358dcda9e97af0422d1e0964c674b3af67c4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/herdman-server-linux-x64.tar.gz"
    sha256 "2e94dd882f5a35638d6248ce380c802a0c54acf64834401183282d032587265b"
  else
    odie "No HerdMan server archive is available for this platform. Supported targets: darwin-arm64, linux-x64"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/herdman-server"
    bin.install_symlink libexec/"bin/herdman-terminal-proxy"
  end

  test do
    assert_match "Missing --server", shell_output("#{bin}/herdman-terminal-proxy 2>&1", 1)
  end
end
