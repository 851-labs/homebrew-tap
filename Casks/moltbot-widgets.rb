cask "moltbot-widgets" do
  version "0.2.3"
  sha256 "85b721c115d469e0f3fdacaa45fa8de67b6cf17ac910dc7a8bf8e08e0dfde2ef"

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
