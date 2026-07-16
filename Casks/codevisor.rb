cask "codevisor" do
  arch arm: "arm64", intel: "x64"

  version "0.1.65"
  sha256 arm:   "ee3cad1eb0f9045c1b453ba42d7559b349d2de27489e46e6777e694162c9c77e",
         intel: "02cb4a285e1ef9fe94d1c61dd6367c44f1fa8e1d550fb01794cbef4b046b60e1"

  url "https://pub-d2d6eb72b71c4986a742c0527774c9f0.r2.dev/releases/codevisor/v#{version}/Codevisor-macOS-#{arch}.zip"
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
