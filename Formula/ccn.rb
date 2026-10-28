class Ccn < Formula
  desc "Phone notifications and approvals for Claude Code, from any terminal"
  homepage "https://claudecodenotifier.com/cli"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/touch-tap/ccn/releases/download/v0.2.0/ccn-aarch64-apple-darwin.tar.gz"
      sha256 "2192e029932bc23c806e8df0ef6e8245c845fb290a2192e5bd30502ef6582539"
    end
    on_intel do
      url "https://github.com/touch-tap/ccn/releases/download/v0.2.0/ccn-x86_64-apple-darwin.tar.gz"
      sha256 "745466ba8adf1fd3000a227dbda97aec52fe03ff03869f464fd26c4f0fd5de06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/touch-tap/ccn/releases/download/v0.2.0/ccn-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bbcb8fa960ade124edb2c5385e201068d5173a81921e9da837e3095d2fc5ea42"
    end
    on_intel do
      url "https://github.com/touch-tap/ccn/releases/download/v0.2.0/ccn-x86_64-unknown-linux-musl.tar.gz"
      sha256 "66f20efac3a6c883bf732b1c4eb0c907d858d10cc436bcaad0a1639d34180dec"
    end
  end

  def install
    bin.install "ccn"
  end

  def caveats
    <<~EOS
      Connect your phone: run
        ccn
      and scan the QR code with the phone's camera, or run
        ccn pair <the code on your phone>
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccn --version")
  end
end
