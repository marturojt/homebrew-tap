class Dapctl < Formula
  desc "TUI/CLI sync tool for HiFi Digital Audio Players"
  homepage "https://dapctl.com"
  version "0.2.0"
  license "GPL-3.0-or-later"

  on_macos do
    url "https://github.com/marturojt/dapctl/releases/download/v0.2.0/dapctl-v0.2.0-universal-apple-darwin.tar.gz"
    sha256 "22ebbd08d4bfd06b003c1060a91b64b08981dba1510a4ef570b66ccb21bf2173"
  end

  on_linux do
    on_intel do
      url "https://github.com/marturojt/dapctl/releases/download/v0.2.0/dapctl-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bb742b0bdb1b5f5f479b99596dc70760c7f1baa9807e7c7218a5ef26ea74b33f"
    end

    on_arm do
      url "https://github.com/marturojt/dapctl/releases/download/v0.2.0/dapctl-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f325e60ae8c093a54fcefef5cf31693f59853fa670c48ecb54a0d0fc8b6e0a35"
    end
  end

  def install
    bin.install "dapctl"
  end

  test do
    assert_match "dapctl #{version}", shell_output("#{bin}/dapctl --version")
  end
end
