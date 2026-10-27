class Ccn < Formula
  desc "Phone notifications and approvals for Claude Code, from any terminal"
  homepage "https://claudecodenotifier.com/cli"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/touch-tap/ccn/releases/download/v0.1.2/ccn-aarch64-apple-darwin.tar.gz"
      sha256 "420ebe3fe8228a02428c71b7a904d3f8f59412653c72924a56265af0903263ed"
    end
    on_intel do
      url "https://github.com/touch-tap/ccn/releases/download/v0.1.2/ccn-x86_64-apple-darwin.tar.gz"
      sha256 "8883dd122f511e40d1e1cab08eaaa8c71ed3bb283e6eccc9dadd2a72c0eed066"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/touch-tap/ccn/releases/download/v0.1.2/ccn-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c3fd3e2a645819afce23117d5b8c70f660b83d489bc8125e8a2f0e060198bcc3"
    end
    on_intel do
      url "https://github.com/touch-tap/ccn/releases/download/v0.1.2/ccn-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b22d55d32836fac6167e3b36db91ad8c17ec0839cae7c2d79ff57f27c9d27068"
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
