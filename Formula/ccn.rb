class Ccn < Formula
  desc "Phone notifications and approvals for Claude Code, from any terminal"
  homepage "https://claudecodenotifier.com/cli"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/touch-tap/ccn/releases/download/v0.1.0/ccn-aarch64-apple-darwin.tar.gz"
      sha256 "211c5c2dd953c24d8e546b9c1bc6622f57f672aefbc45d05980ace376aacc5b9"
    end
    on_intel do
      url "https://github.com/touch-tap/ccn/releases/download/v0.1.0/ccn-x86_64-apple-darwin.tar.gz"
      sha256 "b75275ce82b87066d47f68c85b9fbfd25261919c0419e795421ac98a88a090db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/touch-tap/ccn/releases/download/v0.1.0/ccn-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5fc6412257d02b1b79b4f9aec269fd531a82670854ba526079a9b58aceeac3d8"
    end
    on_intel do
      url "https://github.com/touch-tap/ccn/releases/download/v0.1.0/ccn-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c9e690a416492d94ba76c27810e5684d0791d532fefb243125c6dee03e5a727c"
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
