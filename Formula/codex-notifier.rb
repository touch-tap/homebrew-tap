class CodexNotifier < Formula
  desc "Phone notifications and approvals for OpenAI Codex, from any terminal"
  homepage "https://notifierforcodex.com/cli"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.4/codex-notifier-aarch64-apple-darwin.tar.gz"
      sha256 "57e405b2aaffffd9da3484d823e306eee295ba9dde3cd8387a3e0e9a3c2a5456"
    end
    on_intel do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.4/codex-notifier-x86_64-apple-darwin.tar.gz"
      sha256 "5ff7c5dc5da48b2e24694712c658b93946f0415f50929232eb7f6d63bc058cbd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.4/codex-notifier-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7669486a31ddeb9af1e2788e6e23ac5b633535ffcde0dc7299da72f4fcc256f7"
    end
    on_intel do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.4/codex-notifier-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4151a098336153e2660dbdc30dfbc8bb2ebe155c19ccdd0e328b5bd5ddc8056f"
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
