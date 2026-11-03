class Ccn < Formula
  desc "Phone notifications and approvals for Claude Code, from any terminal"
  homepage "https://claudecodenotifier.com/cli"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.0/ccn-aarch64-apple-darwin.tar.gz"
      sha256 "c6a137e759770ce44579d3533bccd079584489c7c413752851317e601b5a8e02"
    end
    on_intel do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.0/ccn-x86_64-apple-darwin.tar.gz"
      sha256 "fac35442cf4d0648e5e47cd5b2ed9566e7ad1ae3b33e24cc94d8122707b35f4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.0/ccn-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4a07c99551541b4cdba5fc4f6c4f93152739f1883e1c351faf1beaa2c7acf536"
    end
    on_intel do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.0/ccn-x86_64-unknown-linux-musl.tar.gz"
      sha256 "30479ceb4e6e406c8c54c87a58309402b74969d40f064433ac96b5dcbad10d53"
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
