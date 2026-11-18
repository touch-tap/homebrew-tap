class Ccn < Formula
  desc "Phone notifications and approvals for Claude Code, from any terminal"
  homepage "https://claudecodenotifier.com/cli"
  version "0.4.2"

  on_macos do
    on_arm do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.2/ccn-aarch64-apple-darwin.tar.gz"
      sha256 "8e0d39e5e2063e58855ea0ce102a503622ea6a216700e5bc0799bb2be3c5a0a0"
    end
    on_intel do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.2/ccn-x86_64-apple-darwin.tar.gz"
      sha256 "087affbb6cf792f255e5fda926827b0acaf1247896f4f585424fe546eadec7c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.2/ccn-aarch64-unknown-linux-musl.tar.gz"
      sha256 "584b17b6f5f8f42505b02ad5c7320b14b026536c3414adb46327859189484501"
    end
    on_intel do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.2/ccn-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2bc1f2b2e88d6acebfd33b960cd75a3e8bf1d15e06e6a7fcb9c3ea36e62ab6c5"
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
