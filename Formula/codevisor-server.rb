class CodevisorServer < Formula
  desc "Local and remote Codevisor ACP server"
  homepage "https://github.com/851-labs/codevisor"
  version "0.1.52"

  if OS.mac? && Hardware::CPU.arm?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/codevisor/v#{version}/codevisor-server-darwin-arm64.tar.gz"
    sha256 "885a3a6da8a550a77b1727c1074bc65835a5f9cc2b66d821df511376f16dcd1c"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/codevisor/v#{version}/codevisor-server-darwin-x64.tar.gz"
    sha256 "132918eb482b4ff20bc232b3b5edad9e28cd627cb936f04ed29cf3198f06e507"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/codevisor/v#{version}/codevisor-server-linux-x64.tar.gz"
    sha256 "f60ce54528b3b72d06f0a737fb80558e21c85e30e2189fea2d528c4dc14b54ea"
  else
    odie "No Codevisor server archive is available for this platform. Supported targets: darwin-arm64, darwin-x64, linux-x64"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/codevisor-server"
    bin.install_symlink libexec/"bin/codevisor-terminal-proxy"
  end

  test do
    assert_match "Missing --server", shell_output("#{bin}/codevisor-terminal-proxy 2>&1", 1)
  end
end
