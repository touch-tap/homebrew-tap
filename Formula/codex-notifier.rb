class CodexNotifier < Formula
  desc "Phone notifications and approvals for OpenAI Codex, from any terminal"
  homepage "https://notifierforcodex.com/cli"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.5/codex-notifier-aarch64-apple-darwin.tar.gz"
      sha256 "f3c376923ac2d5c2441aea5576be74820d754aae554459f7388744216e3fb947"
    end
    on_intel do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.5/codex-notifier-x86_64-apple-darwin.tar.gz"
      sha256 "6c126bb4cda6691a76ff4f023bf042a2150716d7e6233567526a3dc1b33304f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.5/codex-notifier-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5c30bce18703af75916f667094a3d6eb4388237b5191bfb4555c8ecb0a10bee2"
    end
    on_intel do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.5/codex-notifier-x86_64-unknown-linux-musl.tar.gz"
      sha256 "41dbc594a4301ef6e1e81282aace4dd6d8cb3a95d2b032b218973fd5a25b4fcd"
    end
  end

  def install
    bin.install "codex-notifier"
  end

  def caveats
    <<~EOS
      Run `codex-notifier` to finish setting up: it installs the Codex hooks (desktop
      notifications from then on) and shows a QR code to pair your phone, or run
        codex-notifier pair <the code on your phone>
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codex-notifier --version")
  end
end
