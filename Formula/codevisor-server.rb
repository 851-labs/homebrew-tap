class CodevisorServer < Formula
  desc "Local and remote Codevisor ACP server"
  homepage "https://github.com/851-labs/codevisor"
  version "0.1.113"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/851-labs/codevisor/releases/download/v#{version}/codevisor-server-darwin-arm64.tar.gz"
    sha256 "412711aaf1ee21387ce8f131dbab9a2b8b8c052253fbbbe98a87dc84b00051b5"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/851-labs/codevisor/releases/download/v#{version}/codevisor-server-darwin-x64.tar.gz"
    sha256 "c90ea414f143ce3361632ba59cbbed5bf43fefd95772f0536f2ed718e05c8576"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/851-labs/codevisor/releases/download/v#{version}/codevisor-server-linux-arm64.tar.gz"
    sha256 "c8e40d8b8aa54d52e3e51b15ecf258ba20e7bd6e3b9680a5eaefc0b22150e523"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/851-labs/codevisor/releases/download/v#{version}/codevisor-server-linux-x64.tar.gz"
    sha256 "0ab084fd8bb7c5c58adb7dd190bb11b7a4b791e19f2d196c7a2e9776ddb6500c"
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
