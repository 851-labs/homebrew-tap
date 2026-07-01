class HerdmanServer < Formula
  desc "Local and remote HerdMan ACP server"
  homepage "https://github.com/851-labs/herdman"
  version "0.1.11"

  if OS.mac? && Hardware::CPU.arm?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/herdman-server-darwin-arm64.tar.gz"
    sha256 "8eb4cd4ac267db0d15d55fc81d7d7b65ace059bc1e03ca8a4d4a9353d863b01f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/herdman-server-linux-x64.tar.gz"
    sha256 "cd1746caec05fed48b86d54d7dfa282e5541653687f4bf23aa7b2ac36bb9585d"
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
