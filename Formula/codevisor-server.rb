class CodevisorServer < Formula
  desc "Local and remote Codevisor ACP server"
  homepage "https://github.com/851-labs/codevisor"
  version "0.1.61"

  if OS.mac? && Hardware::CPU.arm?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/codevisor/v#{version}/codevisor-server-darwin-arm64.tar.gz"
    sha256 "e80e6f23ef8a1ae8df9e67493cf530c81a57ac253a8768e50bed05220802a389"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/codevisor/v#{version}/codevisor-server-darwin-x64.tar.gz"
    sha256 "fc788091e51ab11914ed60cacb95638021ecd8a0cd619f1fd66a0982f5c52f44"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/codevisor/v#{version}/codevisor-server-linux-x64.tar.gz"
    sha256 "9dc174f80761020c5b5f794716196fffb27c6b86b6e73f78f812aeca17271e81"
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
