class CodexNotifier < Formula
  desc "Phone notifications and approvals for OpenAI Codex, from any terminal"
  homepage "https://notifierforcodex.com/cli"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.6/codex-notifier-aarch64-apple-darwin.tar.gz"
      sha256 "d4dcf4e8f111e0ad4b5c4ecac146d7cec8284745fde72b414e80c7c499b2b865"
    end
    on_intel do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.6/codex-notifier-x86_64-apple-darwin.tar.gz"
      sha256 "bbcc03871483bddecb14df01b737673ef43ee898f733b6c7040d381869fdc833"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.6/codex-notifier-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ab36d8ebe068d9c4e2b1648ae1852fca67c6c974ded6acf9ad0ff4e63a1ca721"
    end
    on_intel do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.6/codex-notifier-x86_64-unknown-linux-musl.tar.gz"
      sha256 "42e878c2d76c2dff2f4819303ec335b11a75d530d2001fc097314d04f278c485"
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
