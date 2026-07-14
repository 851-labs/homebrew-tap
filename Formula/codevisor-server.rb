class CodevisorServer < Formula
  desc "Local and remote Codevisor ACP server"
  homepage "https://github.com/851-labs/codevisor"
  version "0.1.49"

  if OS.mac? && Hardware::CPU.arm?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/codevisor/v#{version}/codevisor-server-darwin-arm64.tar.gz"
    sha256 "423e763fbac9f4a9344b0e1f9bb9f2cf4c873bbb4dcbd5e2c99e59dc252a4747"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/codevisor/v#{version}/codevisor-server-darwin-x64.tar.gz"
    sha256 "24e1ddd666971bdbc8f29d5e1c4a374177cb15d27e513837be3685723099696a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/codevisor/v#{version}/codevisor-server-linux-x64.tar.gz"
    sha256 "b8a41ceb464511c015232f6842b9171574c838bf87f7009d0119dfa67cce94fb"
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
