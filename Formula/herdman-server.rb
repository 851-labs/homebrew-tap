class HerdmanServer < Formula
  desc "Local and remote HerdMan ACP server"
  homepage "https://github.com/851-labs/herdman"
  version "0.1.19"

  if OS.mac? && Hardware::CPU.arm?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/herdman-server-darwin-arm64.tar.gz"
    sha256 "863a9b975986c73e1da42738ac3b73b1e168aabfa8548564d92d4f399a3b50df"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/herdman-server-darwin-x64.tar.gz"
    sha256 "33a1a585faca20a77e622a93463bdedcafefc1dcab5c057fb888a966dd6c2834"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/herdman-server-linux-x64.tar.gz"
    sha256 "ac6004e1ecb04f08c4849139e7393770a5b5bddc6e92efae4edadccf3841b50a"
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
