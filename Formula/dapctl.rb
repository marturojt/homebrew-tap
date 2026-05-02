class Dapctl < Formula
  desc "TUI/CLI sync tool for HiFi Digital Audio Players"
  homepage "https://dapctl.com"
  version "0.3.0"
  license "GPL-3.0-or-later"

  on_macos do
    url "https://github.com/marturojt/dapctl/releases/download/v0.3.0/dapctl-v0.3.0-universal-apple-darwin.tar.gz"
    sha256 "fb00f318c894b636ac61ac55cca566024402a59417d0b8d8793cf3f4b3e2726a"
  end

  on_linux do
    on_intel do
      url "https://github.com/marturojt/dapctl/releases/download/v0.3.0/dapctl-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "079831a4b54048dbad62b6373d0297cab4cfe885361c7a17e56f2c48d1574d6e"
    end

    on_arm do
      url "https://github.com/marturojt/dapctl/releases/download/v0.3.0/dapctl-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e350fd296b8372a69d5446ea730a3b5f701b975d8200fde39944be14e539fbc9"
    end
  end

  def install
    bin.install "dapctl"
  end

  test do
    assert_match "dapctl #{version}", shell_output("#{bin}/dapctl --version")
  end
end
