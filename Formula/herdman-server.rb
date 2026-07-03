class HerdmanServer < Formula
  desc "Local and remote HerdMan ACP server"
  homepage "https://github.com/851-labs/herdman"
  version "0.1.25"

  if OS.mac? && Hardware::CPU.arm?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/herdman-server-darwin-arm64.tar.gz"
    sha256 "b0077b0de77437a1753f41b545b92e2685cc5b7757ee68ab96de7cae3beaa7b7"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/herdman-server-darwin-x64.tar.gz"
    sha256 "e4347afd2b5cdfb9ae05f1f07f7875d15dd89407924a9f5c6d1bb9f9fe6d0d64"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/herdman-server-linux-x64.tar.gz"
    sha256 "b47004ebeafc9f1bb5ffd64be89cbe2f8084d85c2699825c751dfd074903ed51"
  else
    odie "No HerdMan server archive is available for this platform. Supported targets: darwin-arm64, darwin-x64, linux-x64"
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
