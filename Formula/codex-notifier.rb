class CodexNotifier < Formula
  desc "Phone notifications and approvals for OpenAI Codex, from any terminal"
  homepage "https://notifierforcodex.com/cli"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.1/codex-notifier-aarch64-apple-darwin.tar.gz"
      sha256 "6c459b9021045bd08b809bb08a696bb5c676ee3d13e2846b97610bc245ca72fa"
    end
    on_intel do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.1/codex-notifier-x86_64-apple-darwin.tar.gz"
      sha256 "bcc2b744fa1722ad270594030a22165ef7e9e2e7aa0b1cf3566f95569974a3b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.1/codex-notifier-aarch64-unknown-linux-musl.tar.gz"
      sha256 "960a1061eb4264da8df9afc97c7dda9a5334d1301c11f45e771127f3428397ed"
    end
    on_intel do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.1/codex-notifier-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1cf19b206a22eee6e09a0cd906192450b52a9ab8bf206a735c03dfe83184eaf0"
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
