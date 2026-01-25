class Macrack < Formula
  desc "Keep your Mac server-ready"
  homepage "https://github.com/851-labs/macrack"
  url "https://github.com/851-labs/macrack/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "61e18a7f3452f7f90bfa3487308a619b9013fd53297ee943247f48645b8c1af3"
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
