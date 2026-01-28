cask "moltbot-widgets" do
  version "0.2.2"
  sha256 "e0148d3e39ffd355b966beb79cf9775c5c494d403c84b0193678c7f7e126857b"

  url "https://github.com/851-labs/MoltbotWidgets/releases/download/v#{version}/MoltbotWidgets.dmg"
  name "Moltbot Widgets"
  desc "macOS desktop widgets for monitoring your Moltbot gateway"
  homepage "https://github.com/851-labs/MoltbotWidgets"

  app "MoltbotWidgets.app"
  binary "#{appdir}/MoltbotWidgets.app/Contents/Resources/moltbot-widgets"

  postflight do
    system_command "/usr/bin/pluginkit",
                   args: ["-a", "#{appdir}/MoltbotWidgets.app/Contents/PlugIns/MoltbotWidgetsExtension.appex"],
                   sudo: false
  end
end
