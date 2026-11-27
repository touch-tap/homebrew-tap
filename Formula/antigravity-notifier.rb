class AntigravityNotifier < Formula
  desc "Phone notifications and approvals for Google Antigravity, from any terminal"
  homepage "https://antigravitynotifier.com/cli"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/touch-tap/antigravity-notifier/releases/download/v0.1.1/antigravity-notifier-aarch64-apple-darwin.tar.gz"
      sha256 "726275baa7fab31a50b7ea4610d51853d209619b71fe8dc2221e30f061e078d0"
    end
    on_intel do
      url "https://github.com/touch-tap/antigravity-notifier/releases/download/v0.1.1/antigravity-notifier-x86_64-apple-darwin.tar.gz"
      sha256 "563619d83069ddb8aea3f24059cb3ffd6d2e973be1105d2d8c81af4823648619"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/touch-tap/antigravity-notifier/releases/download/v0.1.1/antigravity-notifier-aarch64-unknown-linux-musl.tar.gz"
      sha256 "93823f3cb3ea045e623310cff6ffd7ab501072c0ec8267adfde99239d4fff162"
    end
    on_intel do
      url "https://github.com/touch-tap/antigravity-notifier/releases/download/v0.1.1/antigravity-notifier-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2f2d3108204f0642330641d1912604d55c448053f803b6a0d242fccdab4deb0a"
    end
  end

  def install
    bin.install "antigravity-notifier"
  end

  def caveats
    <<~EOS
      Run `antigravity-notifier` to finish setting up: it installs the Antigravity hooks (desktop
      notifications from then on) and shows a QR code to pair your phone, or run
        antigravity-notifier pair <the code on your phone>
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/antigravity-notifier --version")
  end
end
