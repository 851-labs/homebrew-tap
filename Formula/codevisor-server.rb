class CodevisorServer < Formula
  desc "Local and remote Codevisor ACP server"
  homepage "https://github.com/851-labs/codevisor"
  version "0.1.96"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/851-labs/codevisor/releases/download/v#{version}/codevisor-server-darwin-arm64.tar.gz"
    sha256 "16179b7693488690068ab190c4f53548dd2a4b7744ff7fb50126b62e7de1a9bf"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/851-labs/codevisor/releases/download/v#{version}/codevisor-server-darwin-x64.tar.gz"
    sha256 "643772c1802c13e31e0bd3b010ded55071cac6c048fee969cc9f653febfee929"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/851-labs/codevisor/releases/download/v#{version}/codevisor-server-linux-arm64.tar.gz"
    sha256 "fd49fdde2a284eca7d5c80428fbdaf9020012c1c290484ae06acb1c4725c340c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/851-labs/codevisor/releases/download/v#{version}/codevisor-server-linux-x64.tar.gz"
    sha256 "067405f2ee00566fc7fb5a8228701e498d190510cdebbde9606f0f22db2d9a38"
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
