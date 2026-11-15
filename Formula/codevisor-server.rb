class CodevisorServer < Formula
  desc "Local and remote Codevisor ACP server"
  homepage "https://github.com/851-labs/codevisor"
  version "0.1.114"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/851-labs/codevisor/releases/download/v#{version}/codevisor-server-darwin-arm64.tar.gz"
    sha256 "982b8056389c2780a864ea65a497115f57432ee45c3807cda91273506eeb2e80"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/851-labs/codevisor/releases/download/v#{version}/codevisor-server-darwin-x64.tar.gz"
    sha256 "71f8b5cf3548f7250af676c85d1d28feef12c4fb091df808afc3bbab18b8481d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/851-labs/codevisor/releases/download/v#{version}/codevisor-server-linux-arm64.tar.gz"
    sha256 "c129e3eebc05cf02cd7d162a3031fa86764fe5a560509337ac764ae255057649"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/851-labs/codevisor/releases/download/v#{version}/codevisor-server-linux-x64.tar.gz"
    sha256 "d56426bb76797343a7eea9e8730febb012e97e0f66bf47255cf3c7a5c4613afb"
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
