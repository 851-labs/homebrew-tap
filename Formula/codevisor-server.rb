class CodevisorServer < Formula
  desc "Local and remote Codevisor ACP server"
  homepage "https://github.com/851-labs/codevisor"
  version "0.1.55"

  if OS.mac? && Hardware::CPU.arm?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/codevisor/v#{version}/codevisor-server-darwin-arm64.tar.gz"
    sha256 "41e67111b0d4e859b00059bd048530084198694383dae9252f6882b73b094636"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/codevisor/v#{version}/codevisor-server-darwin-x64.tar.gz"
    sha256 "4b52941b02180c4f91aea867a283f12787693324f01cb00e570b1baea3015273"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/codevisor/v#{version}/codevisor-server-linux-x64.tar.gz"
    sha256 "c669cb259cd6f966d70c823a917329956b2a79204cd06b3d72341b109a421e66"
  else
    odie "No Codevisor server archive is available for this platform. Supported targets: darwin-arm64, darwin-x64, linux-x64"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/codevisor"
    bin.install_symlink libexec/"bin/codevisor-server"
    bin.install_symlink libexec/"bin/codevisor-terminal-proxy"
  end

  test do
    assert_match "codevisor", shell_output("#{bin}/codevisor --version")
    assert_match "Missing --server", shell_output("#{bin}/codevisor-terminal-proxy 2>&1", 1)
  end
end
