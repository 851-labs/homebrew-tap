class HerdmanServer < Formula
  desc "Local and remote HerdMan ACP server"
  homepage "https://github.com/851-labs/herdman"
  version "0.1.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/herdman-server-darwin-arm64.tar.gz"
    sha256 "69b1c52fa4443b70c477227c7aa9b85c9f02286679d2997d5393cd1a8bb2b913"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/herdman-server-linux-x64.tar.gz"
    sha256 "03f538029775234c94cad4e7c827ff3578148806b2af9422184ff0b6a333c891"
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
