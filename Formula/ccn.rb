class Ccn < Formula
  desc "Phone notifications and approvals for Claude Code, from any terminal"
  homepage "https://claudecodenotifier.com/cli"
  version "0.4.3"

  on_macos do
    on_arm do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.3/ccn-aarch64-apple-darwin.tar.gz"
      sha256 "1f8e04a4c2b221ddb84ffa61c2a11446518d6e84937f4f7d58057c99391fa61e"
    end
    on_intel do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.3/ccn-x86_64-apple-darwin.tar.gz"
      sha256 "c5ae1c01e32911edaf832568ec00b659b8fd2124db04cddc88262c407c761a92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.3/ccn-aarch64-unknown-linux-musl.tar.gz"
      sha256 "83baa7eff08d204f301b19242fd77a3c342e4e39dce9bb3830de2ad931b97598"
    end
    on_intel do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.3/ccn-x86_64-unknown-linux-musl.tar.gz"
      sha256 "55dbc7d4b7d40d98e94d7a46953107dbd6606a44db1962bb4ae1c1a86084b55b"
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
