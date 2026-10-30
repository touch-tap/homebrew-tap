class Ccn < Formula
  desc "Phone notifications and approvals for Claude Code, from any terminal"
  homepage "https://claudecodenotifier.com/cli"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/touch-tap/ccn/releases/download/v0.3.0/ccn-aarch64-apple-darwin.tar.gz"
      sha256 "ab912d6adef1deddad79d5407850f76ee02b42aa8e26ae822cbb11081b501507"
    end
    on_intel do
      url "https://github.com/touch-tap/ccn/releases/download/v0.3.0/ccn-x86_64-apple-darwin.tar.gz"
      sha256 "682822857fd74c970f81715450c3a8cef12e2b251b4fde5b74a9a640c4eba6ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/touch-tap/ccn/releases/download/v0.3.0/ccn-aarch64-unknown-linux-musl.tar.gz"
      sha256 "976124a41c95ca712cee197dd9b5a2791eac020cf854c9f7fafbc9e999e75579"
    end
    on_intel do
      url "https://github.com/touch-tap/ccn/releases/download/v0.3.0/ccn-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d6d04a12e44eacb319ecfb50d39570134c0ef2b6fd0bdf3bf2250c062bbbd0be"
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
