class Dapctl < Formula
  desc "TUI/CLI sync tool for HiFi Digital Audio Players"
  homepage "https://dapctl.com"
  version "0.1.0"
  license "GPL-3.0-or-later"

  on_macos do
    url "https://github.com/marturojt/dapctl/releases/download/v0.1.0/dapctl-v0.1.0-universal-apple-darwin.tar.gz"
    sha256 "240fae36024c8636c9c2822c7b4b20602ea59af775ad0a1132277e45590d2259"
  end

  on_linux do
    on_intel do
      url "https://github.com/marturojt/dapctl/releases/download/v0.1.0/dapctl-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7f5ddf878f7146086f5c7d807fe59d839976bfded94d20004dbda42ad5e0eb2b"
    end

    on_arm do
      url "https://github.com/marturojt/dapctl/releases/download/v0.1.0/dapctl-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bd3c279719941add7582e1fdb9bc4d665343cefe0ae3c42cfbe693f734c3dd29"
    end
  end

  def install
    bin.install "dapctl"
  end

  test do
    assert_match "dapctl #{version}", shell_output("#{bin}/dapctl --version")
  end
end
