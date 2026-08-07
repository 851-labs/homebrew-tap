class CodevisorServer < Formula
  desc "Local and remote Codevisor ACP server"
  homepage "https://github.com/851-labs/codevisor"
  version "0.1.98"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/851-labs/codevisor/releases/download/v#{version}/codevisor-server-darwin-arm64.tar.gz"
    sha256 "628f6fa68421e86540a34253fa5c8957f6917e5c37be67c1667a64894beb00c6"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/851-labs/codevisor/releases/download/v#{version}/codevisor-server-darwin-x64.tar.gz"
    sha256 "59ce56b642ab5bf5cb13878039d3cdb8e20065c2e8c37dd1e82c41cbe251b967"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/851-labs/codevisor/releases/download/v#{version}/codevisor-server-linux-arm64.tar.gz"
    sha256 "b3147f664f671d20b5d6d296ef6053442ef581d02c0e7bf785aa0855da6eb652"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/851-labs/codevisor/releases/download/v#{version}/codevisor-server-linux-x64.tar.gz"
    sha256 "c89d9446431ceee92c14d4c4aab6fdfcd64c7841f1907f225d02c3db5f8dee3a"
  else
    odie "No Codevisor server archive is available for this platform. Supported targets: darwin-arm64, darwin-x64, linux-arm64, linux-x64"
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
