cask "lil-passwords" do
  # `version`/`sha256` are kept in sync with GitHub Releases automatically —
  # 851-labs/lil-passwords's release workflow rewrites both after every
  # publish (its "Bump Homebrew cask" step, see docs/releasing.md there).
  # The values below are a placeholder as of 851-2438: no release exists yet.
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/851-labs/lil-passwords/releases/download/v#{version}/LilPasswords-#{version}.dmg"
  name "lil passwords"
  desc "Local-first password manager"
  homepage "https://github.com/851-labs/lil-passwords"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself in place via Sparkle once it's running, so only
  # explicit `brew upgrade` (or --greedy) should touch it — same convention
  # as codevisor.rb/char.rb in this tap.
  auto_updates true
  # lil passwords' minimum deployment target (Config/Base.xcconfig).
  depends_on macos: :ventura

  app "lil passwords.app"
  # The CLI binary embedded in the app is named `lilpass`
  # (Contents/Helpers/lilpass), but 851-2438 links it onto PATH under the
  # shorter `lilpw` command name.
  binary "#{appdir}/lil passwords.app/Contents/Helpers/lilpass", target: "lilpw"

  zap trash: [
    "~/Library/Application Support/lil passwords",
    "~/Library/Preferences/com.851labs.lilpasswords*.plist",
  ]

  # Not covered by `zap` above: the vault key is a generic-password item in
  # the local, file-based (legacy) Keychain — service
  # com.851labs.lilpasswords.vaultkey, account vaultKey (see
  # VaultKeyStoring.swift in the main repo's Packages/LilPasswordsKit).
  # Homebrew cask's zap stanza has no primitive for arbitrary legacy Keychain
  # items, so this is left as a manual step for anyone who wants it gone:
  #   security delete-generic-password -s com.851labs.lilpasswords.vaultkey
  # or via Keychain Access, search "lilpasswords".

  caveats do
    <<~EOS
      lil passwords isn't notarized yet (851-2436 in the main repo) — every
      release today is ad hoc signed. macOS will refuse to open it on first
      launch; either right-click the app in Applications and choose Open, or
      clear the quarantine flag yourself:
        xattr -d com.apple.quarantine "#{appdir}/lil passwords.app"
      This step goes away once Developer ID signing and notarization land.
    EOS
  end
end
