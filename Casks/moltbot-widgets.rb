cask "moltbot-widgets" do
  version "0.1.0"
  sha256 "efe44b6c1ee96c731e9703fa7ec3044869aeec5979f7dd991727d935422fc66f"

  url "https://github.com/851-labs/MoltbotWidgets/releases/download/v#{version}/MoltbotWidgets.dmg"
  name "Moltbot Widgets"
  desc "macOS desktop widgets for monitoring your Moltbot gateway"
  homepage "https://github.com/851-labs/MoltbotWidgets"

  app "Moltbot Widgets.app"
end
