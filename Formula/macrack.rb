class Macrack < Formula
  desc "Keep your Mac server-ready"
  homepage "https://github.com/851-labs/macrack"
  version "1.0.10"
  license "MIT"

  url "https://github.com/851-labs/macrack/releases/download/v#{version}/macrack"
  sha256 "cf8a6e28d309cf8a8ab521e827903518a6e80dfc8aadb368b70cabb67ffe258a"

  depends_on macos: :ventura

  def install
    bin.install "macrack"
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
