cask "codevisor" do
  arch arm: "arm64", intel: "x64"

  version "0.1.92"
  sha256 arm:   "661f923a8a9c0f3e4f691db78e014ba5194a643b4b2c719123061528f1903b78",
         intel: "7b145b1e2246d445946be057fec98ea0b5a3309a017385547c40a687f1e3ebda"

  url "https://github.com/851-labs/codevisor/releases/download/v#{version}/Codevisor-macOS-#{arch}.zip"
  name "Codevisor"
  desc "ACP chat client and local Codevisor server"
  homepage "https://github.com/851-labs/codevisor"

  # The app also updates itself in place, so only explicit `brew upgrade`
  # (or --greedy) should touch it.
  auto_updates true

  app "Codevisor.app"

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
