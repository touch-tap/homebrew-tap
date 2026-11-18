class CodexNotifier < Formula
  desc "Phone notifications and approvals for OpenAI Codex, from any terminal"
  homepage "https://notifierforcodex.com/cli"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.3/codex-notifier-aarch64-apple-darwin.tar.gz"
      sha256 "5821fb17e8fd2ed899bc72ab350b3adfa90e4a6e939f45fd61489126e24d611e"
    end
    on_intel do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.3/codex-notifier-x86_64-apple-darwin.tar.gz"
      sha256 "7a6665a3dfbf646c087f4ecd33a7d6edd6f4ed3411df3b0dd899fc8a06746fd0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.3/codex-notifier-aarch64-unknown-linux-musl.tar.gz"
      sha256 "46c6a21d8b8b569eaeb0f9ac1d6ba1219a8b1bcebe170ea387d80f2786604545"
    end
    on_intel do
      url "https://github.com/touch-tap/codex-notifier/releases/download/v0.1.3/codex-notifier-x86_64-unknown-linux-musl.tar.gz"
      sha256 "75a7722535e51747dbcd313eb4a9e7b86b739a1d4ca9886821886e23f0361d3e"
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
