class Macrack < Formula
  desc "Keep your Mac server-ready"
  homepage "https://github.com/851-labs/macrack"
  url "https://github.com/851-labs/macrack/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "d0672038449ccc6f347e6bd47585b64fd6e35f81f7e7a586259560e74c7d9cdf"
  license "MIT"

  depends_on macos: :ventura
  depends_on xcode: ["15.0", :build]

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/macrack"
  end

  service do
    run [opt_bin/"macrack", "agent"]
    keep_alive true
    log_path var/"log/macrack.log"
    error_log_path var/"log/macrack.log"
  end

  def caveats
    <<~EOS
      To start MacRack:
        brew services start macrack

      Prerequisites for headless server:
        • Enable auto-login: System Settings → Users & Groups → Automatic Login
        • Disable FileVault (required for auto-login)

      To stop:
        brew services stop macrack
    EOS
  end

  test do
    system "#{bin}/macrack", "version"
  end
end
