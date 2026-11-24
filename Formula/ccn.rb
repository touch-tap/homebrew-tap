class Ccn < Formula
  desc "Phone notifications and approvals for Claude Code, from any terminal"
  homepage "https://claudecodenotifier.com/cli"
  version "0.4.4"

  on_macos do
    on_arm do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.4/ccn-aarch64-apple-darwin.tar.gz"
      sha256 "9c8cf8048d9c5e0d96abdc4b76c4bb924e36e46d6d080e50ed1498b5d828eb1e"
    end
    on_intel do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.4/ccn-x86_64-apple-darwin.tar.gz"
      sha256 "d5108bc10de6c1e3663fbc256991a25a68778fe36c546e5f74337efbcfcdc181"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.4/ccn-aarch64-unknown-linux-musl.tar.gz"
      sha256 "95d08019a29faf059b52368c932afacc0b5a31b6bac6ec3dfe348af26fff9028"
    end
    on_intel do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.4/ccn-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ba80905be3f15dca3b524ae1c046bca368b45955536824f7f5c046b8f8f652e9"
    end
  end

  def install
    bin.install "ccn"
  end

  def caveats
    <<~EOS
      Run `ccn` to finish setting up: it installs the Claude Code hooks (desktop
      notifications from then on) and shows a QR code to pair your phone, or run
        ccn pair <the code on your phone>
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccn --version")
  end
end
