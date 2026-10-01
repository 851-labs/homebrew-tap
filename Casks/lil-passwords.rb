cask "lil-passwords" do
  # `version`/`sha256` are kept in sync with GitHub Releases automatically —
  # 851-labs/lil-passwords's release workflow rewrites both after every
  # publish (its "Bump Homebrew cask" step, see docs/releasing.md there).
  version "0.1.0"
  sha256 "7250cf50fca48d22a80bc0010675d787d053ea3323b1df213b5a3a00c391f7ae"

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
  # The CLI binary is embedded in the app as Contents/Helpers/lilpass and
  # links onto PATH under that same name.
  binary "#{appdir}/lil passwords.app/Contents/Helpers/lilpass"

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

end
