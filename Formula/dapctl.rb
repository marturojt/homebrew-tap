class Dapctl < Formula
  desc "TUI/CLI sync tool for HiFi Digital Audio Players"
  homepage "https://dapctl.com"
  version "1.0.0"
  license "GPL-3.0-or-later"

  on_macos do
    url "https://github.com/marturojt/dapctl/releases/download/v1.0.0/dapctl-v1.0.0-universal-apple-darwin.tar.gz"
    sha256 "50bb87d5165ef9b004fb0bf98b5caab1894110256bca407ca5e8f813af0c49ff"
  end

  on_linux do
    on_intel do
      url "https://github.com/marturojt/dapctl/releases/download/v1.0.0/dapctl-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "82ef6a5fa7b460a9e4c30bfe85e5a6c030cdda5e004457246da4bb6ac3544989"
    end

    on_arm do
      url "https://github.com/marturojt/dapctl/releases/download/v1.0.0/dapctl-v1.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dc387294140384554ccb352ddf55baf2b6ea5d151eb6733bca748b37550ace67"
    end
  end

  def install
    bin.install "dapctl"
  end

  test do
    assert_match "dapctl #{version}", shell_output("#{bin}/dapctl --version")
  end
end
