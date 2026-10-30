class CodevisorServer < Formula
  desc "Local and remote Codevisor ACP server"
  homepage "https://github.com/851-labs/codevisor"
  version "0.1.110"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/851-labs/codevisor/releases/download/v#{version}/codevisor-server-darwin-arm64.tar.gz"
    sha256 "b3a6f43a1c6c521452e404b3a85bfe11c2b1a83478a82a7cbff64c779374f0de"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/851-labs/codevisor/releases/download/v#{version}/codevisor-server-darwin-x64.tar.gz"
    sha256 "41fe3c04afaadd2fe809f0148972a365968d6f7a31f3266d13bca06ce98d49ef"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/851-labs/codevisor/releases/download/v#{version}/codevisor-server-linux-arm64.tar.gz"
    sha256 "ddc34ca76f2681be2d7b1eb816d50f907471a680578688c35b53c963ef9c34fb"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/851-labs/codevisor/releases/download/v#{version}/codevisor-server-linux-x64.tar.gz"
    sha256 "9a13c340a5293aac73ab5d55e773a05b63a477514159cd4ec8ff3f9cfd60d7b4"
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
