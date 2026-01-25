class Macrack < Formula
  desc "Keep your Mac server-ready"
  homepage "https://github.com/851-labs/macrack"
  version "1.0.4"
  license "MIT"

  url "https://github.com/851-labs/macrack/releases/download/v#{version}/macrack"
  sha256 "ed8cfa0abedb9c0c59c25d72694358e984a481f177e1df68d8026e1ada656b16"

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
