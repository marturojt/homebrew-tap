class Dapctl < Formula
  desc "TUI/CLI sync tool for HiFi Digital Audio Players"
  homepage "https://dapctl.com"
  version "0.4.0"
  license "GPL-3.0-or-later"

  on_macos do
    url "https://github.com/marturojt/dapctl/releases/download/v0.4.0/dapctl-v0.4.0-universal-apple-darwin.tar.gz"
    sha256 "9fc098473a3740044ab3581d671c2b40ad08fd489255dd78330d272ef479d31d"
  end

  on_linux do
    on_intel do
      url "https://github.com/marturojt/dapctl/releases/download/v0.4.0/dapctl-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "90b089584ee34627fa4702f1c0308e751b69ee8204395ea996be0a841dab4722"
    end

    on_arm do
      url "https://github.com/marturojt/dapctl/releases/download/v0.4.0/dapctl-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6e77e3523024635654a0837377a7b5b1dc118db4e4c0071ebb356195d94e357e"
    end
  end

  def install
    bin.install "dapctl"
  end

  test do
    assert_match "dapctl #{version}", shell_output("#{bin}/dapctl --version")
  end
end
