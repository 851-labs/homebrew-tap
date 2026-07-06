class HerdmanServer < Formula
  desc "Local and remote HerdMan ACP server"
  homepage "https://github.com/851-labs/herdman"
  version "0.1.32"

  if OS.mac? && Hardware::CPU.arm?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/herdman-server-darwin-arm64.tar.gz"
    sha256 "9b1a80eec19cc94f0d86b9ca0311c26f2e635a8596a1473c6480e6b3e9d3b7c8"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/herdman-server-darwin-x64.tar.gz"
    sha256 "3f99d15b47ecb60c006ebef7af45a2a26e763c3c5aa475a0165d1ef6e7e130c1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/herdman/v#{version}/herdman-server-linux-x64.tar.gz"
    sha256 "9a44eeea88554c57703a8ebb9e19d879ab9dd72fc5014e0e13e23ffcfc9d19c6"
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
