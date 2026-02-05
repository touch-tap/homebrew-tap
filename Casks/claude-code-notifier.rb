cask "claude-code-notifier" do
  version "1.0.0"
  sha256 "9c32aa94cf6ecbff98aaa9f895a0789fb091bd656959d4310186590c3b7856af"

  url "https://github.com/touch-tap/claude-code-notifier/releases/download/v#{version}/CCNotifier-#{version}.dmg"
  name "Claude Code Notifier"
  desc "Menu bar notifications for Claude Code sessions"
  homepage "https://claudecodenotifier.com"

  depends_on macos: ">= :sonoma"

  app "Claude Code Notifier.app"

  zap trash: [
    "~/Library/Application Support/CCNotifier",
    "~/Library/Caches/uk.co.touchtap.CCNotifier",
    "~/Library/Preferences/uk.co.touchtap.CCNotifier.plist",
  ]
end
