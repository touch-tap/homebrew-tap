class Ccn < Formula
  desc "Phone notifications and approvals for Claude Code, from any terminal"
  homepage "https://claudecodenotifier.com/cli"
  version "0.4.1"

  on_macos do
    on_arm do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.1/ccn-aarch64-apple-darwin.tar.gz"
      sha256 "9923fb296b4a53dddbe4fdf192de3f011ede8fdd15933ce3f9b91b4d714a47ef"
    end
    on_intel do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.1/ccn-x86_64-apple-darwin.tar.gz"
      sha256 "a976322d37a7a67cd583d9171ac363643b67be55c7cdbc109c7b1ff2f877928d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.1/ccn-aarch64-unknown-linux-musl.tar.gz"
      sha256 "75aea6463cac575c6b8a6a2294d67ce2002333f1cc0c8d461251291c89b111b0"
    end
    on_intel do
      url "https://github.com/touch-tap/ccn/releases/download/v0.4.1/ccn-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b7991b2a6df1c62ee26b9b163f74960267c0a1fc584377051a13b73fb03ebe56"
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
