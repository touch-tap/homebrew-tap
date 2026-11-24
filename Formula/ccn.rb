class Ccn < Formula
  desc "Phone notifications and approvals for Claude Code, from any terminal"
  homepage "https://claudecodenotifier.com/cli"
  version "0.4.5"

  on_macos do
    on_arm do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.5/ccn-aarch64-apple-darwin.tar.gz"
      sha256 "26930a6a3744ded172e2b7e26c18cb36d2995eb8ed0d73304c302e85c4fb249d"
    end
    on_intel do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.5/ccn-x86_64-apple-darwin.tar.gz"
      sha256 "3c08e586e53ca358a34f497280519b04fdab9ee34649b2e015c7837b01700261"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.5/ccn-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d6242a3e0843bfbb617cd46270dcc29ac37805ccb41eebc1bc69aecc3e2ba28c"
    end
    on_intel do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.5/ccn-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c157696913bbd6bc38be7bebcd67b973e802d70ba56cfe9d605f6e8bdf14de49"
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
