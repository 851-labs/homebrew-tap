class Macrack < Formula
  desc "Keep your Mac server-ready"
  homepage "https://github.com/851-labs/macrack"
  url "https://github.com/851-labs/macrack/archive/refs/tags/v0.1.16.tar.gz"
  sha256 "c7e750b244298c8758f66db258031ce99d1e0af9763415e4f6ab87f3a8f0df2b"
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
