cask "codevisor" do
  version "0.1.103"
  sha256 "cf634dc93e431f036ff34ddd89db3d51e8617c000bf5723eafe638c32d2f9177"

  url "https://github.com/851-labs/codevisor/releases/download/v#{version}/Codevisor-macOS-arm64.zip"
  name "Codevisor"
  desc "ACP chat client and local Codevisor server"
  homepage "https://github.com/851-labs/codevisor"

  # The app ships for Apple silicon only. Intel Macs can still run the
  # standalone server: brew install 851-labs/tap/codevisor-server
  depends_on arch: :arm64

  # The app also updates itself in place, so only explicit `brew upgrade`
  # (or --greedy) should touch it.
  auto_updates true

  app "Codevisor.app"

  # The app bundles the server runtime with its CLI launchers; link them onto
  # PATH so `codevisor` works from a terminal, matching the Linux server
  # install. The launchers resolve symlinks before locating the runtime root,
  # so linking straight into the installed bundle is safe, and in-place app
  # updates keep the links valid.
  binary "#{appdir}/Codevisor.app/Contents/Resources/server/darwin-arm64/bin/codevisor"
  binary "#{appdir}/Codevisor.app/Contents/Resources/server/darwin-arm64/bin/codevisor-server"
  binary "#{appdir}/Codevisor.app/Contents/Resources/server/darwin-arm64/bin/codevisor-terminal-proxy"

  # The codevisor-server formula links the same launcher names; installing
  # both would collide in $HOMEBREW_PREFIX/bin.
  conflicts_with formula: "851-labs/tap/codevisor-server"

  # Quit a running app before the bundle is swapped. The preflight covers
  # upgrades from cask versions that predate the uninstall stanza; the guard
  # keeps AppleScript from launching the app on a fresh install.
  preflight do
    system_command "/usr/bin/osascript",
                   args: [
                     "-e",
                     'if application id "com.851labs.HerdMan" is running then ' \
                     'tell application id "com.851labs.HerdMan" to quit'
                   ],
                   must_succeed: false
    system_command "/bin/rm",
                   args: ["-rf", "#{appdir}/HerdMan.app"]
  end

  uninstall quit: "com.851labs.HerdMan"

  # Relaunch after install/upgrade so `brew upgrade` hands back a running,
  # current app (which in turn restarts an outdated local server on launch).
  postflight do
    system_command "/usr/bin/open",
                   args: ["-a", "#{appdir}/Codevisor.app"],
                   must_succeed: false
  end
end
