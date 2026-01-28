cask "moltbot-widgets" do
  version "0.1.2"
  sha256 "e7e923b7df7c0a8e72cad1f318ad064fa94dbbe8e758674b82b7af583cc00fc5"

  url "https://github.com/851-labs/MoltbotWidgets/releases/download/v#{version}/MoltbotWidgets.dmg"
  name "Moltbot Widgets"
  desc "macOS desktop widgets for monitoring your Moltbot gateway"
  homepage "https://github.com/851-labs/MoltbotWidgets"

  app "MoltbotWidgets.app"

  postflight do
    system_command "/usr/bin/pluginkit",
                   args: ["-a", "#{appdir}/MoltbotWidgets.app/Contents/PlugIns/MoltbotWidgetsExtension.appex"],
                   sudo: false
  end
end
