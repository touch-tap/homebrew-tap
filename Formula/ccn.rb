class Ccn < Formula
  desc "Phone notifications and approvals for Claude Code, from any terminal"
  homepage "https://claudecodenotifier.com/cli"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/touch-tap/ccn/releases/download/v0.1.1/ccn-aarch64-apple-darwin.tar.gz"
      sha256 "3a9a70853f3cf240d5a0b8bbc24cec134450ccfe88875ce24495a22c0ebdf239"
    end
    on_intel do
      url "https://github.com/touch-tap/ccn/releases/download/v0.1.1/ccn-x86_64-apple-darwin.tar.gz"
      sha256 "7c2f747b4cfcd2a5bcbc34fea4d17f1636cd37caa81b783989d781d1944c8190"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/touch-tap/ccn/releases/download/v0.1.1/ccn-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b7d73a3783d385bb229f1cd6fa1edc525bcecfc8f60f7ecf5e0e58e4ea32debf"
    end
    on_intel do
      url "https://github.com/touch-tap/ccn/releases/download/v0.1.1/ccn-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b74d3f8e17bcf86f6cf3c435af2078ace440a3eb123b8d1fac02849ab8ce91a3"
    end
  end

  def install
    bin.install "ccn"
  end

  def caveats
    <<~EOS
      Pair with your phone: open Claude Code Notifier, add a computer, then run
        ccn pair <the code on your phone>
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccn --version")
  end
end
