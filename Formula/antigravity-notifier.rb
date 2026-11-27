class AntigravityNotifier < Formula
  desc "Phone notifications and approvals for Google Antigravity, from any terminal"
  homepage "https://antigravitynotifier.com/cli"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/touch-tap/antigravity-notifier/releases/download/v0.1.0/antigravity-notifier-aarch64-apple-darwin.tar.gz"
      sha256 "2280448907c9b65c7a05ba71e80062b2ac2b74871d790f9d5ddffc4cc9819293"
    end
    on_intel do
      url "https://github.com/touch-tap/antigravity-notifier/releases/download/v0.1.0/antigravity-notifier-x86_64-apple-darwin.tar.gz"
      sha256 "12eed04d7715a8b721aa7f585bc93f21c96a799559d064076ca6dad1e907cbd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/touch-tap/antigravity-notifier/releases/download/v0.1.0/antigravity-notifier-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cc5c9c0524cca5c80b638ac3ac7ad660a88607daccb1ddea02186a0a28647adb"
    end
    on_intel do
      url "https://github.com/touch-tap/antigravity-notifier/releases/download/v0.1.0/antigravity-notifier-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eaf295a581c0b8e3c8fd10d3b7cef02b3ac8f8ee401ac1f453fc75718ba322d1"
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
