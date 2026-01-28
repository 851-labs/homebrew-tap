cask "moltbot-widgets" do
  version "0.2.1"
  sha256 "31c0fe150b4f4a4de3c61d4ba84fd500f86c5f87ba8ebcc162be7ad9816e2d0f"

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
