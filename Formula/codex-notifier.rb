class CodexNotifier < Formula
  desc "Phone notifications and approvals for OpenAI Codex, from any terminal"
  homepage "https://notifierforcodex.com/cli"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.0/codex-notifier-aarch64-apple-darwin.tar.gz"
      sha256 "0d0ffb7cb17b881b8b977f4e148a60febd4d41cf9d0b6b8d16e8bb1f6bcca0ed"
    end
    on_intel do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.0/codex-notifier-x86_64-apple-darwin.tar.gz"
      sha256 "3b6371a32303c84ab8608fd0190fe7c1d3441c9c4bc0b3972f96a75731d00b23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.0/codex-notifier-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cd83ff581a25bd3326120e6a7e70168eac19f1fd26bf010abd903a8648463c65"
    end
    on_intel do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.0/codex-notifier-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3e02dadb1af82e6625c8e018184ad033f03a9099680986a37c90a4b04f8a6f23"
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
