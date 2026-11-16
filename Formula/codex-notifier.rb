class CodexNotifier < Formula
  desc "Phone notifications and approvals for OpenAI Codex, from any terminal"
  homepage "https://notifierforcodex.com/cli"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.2/codex-notifier-aarch64-apple-darwin.tar.gz"
      sha256 "d4a845923c4af6b43269a96fb105b7ef4350783acfcd580665d6433a1479b9f7"
    end
    on_intel do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.2/codex-notifier-x86_64-apple-darwin.tar.gz"
      sha256 "dcbee005f6b939fb6faff971628c11708c3e91a8f7b353099270b67344431399"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.2/codex-notifier-aarch64-unknown-linux-musl.tar.gz"
      sha256 "06eb375b0b47e4be7f811931df6929188d68c7eff1f4ad5af9e5b760670b3f1f"
    end
    on_intel do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.2/codex-notifier-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ee0b1e5ef005e8baf6539c9ae370e9675eeb18c502038679faa7a34e322952ae"
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
