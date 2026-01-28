cask "moltbot-widgets" do
  version "0.2.0"
  sha256 "1ead46ff7d68515dcb91053c9ab2cf165213969ad8fceea9442f6e92ef928639"

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
