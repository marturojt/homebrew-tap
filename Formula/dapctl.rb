class Dapctl < Formula
  desc "TUI/CLI sync tool for HiFi Digital Audio Players"
  homepage "https://dapctl.com"
  version "1.0.1"
  license "GPL-3.0-or-later"

  on_macos do
    url "https://github.com/marturojt/dapctl/releases/download/v1.0.1/dapctl-v1.0.1-universal-apple-darwin.tar.gz"
    sha256 "981e8edc4d334641a8f6b4815bbe079ac01e88479ebaeb4e700b7984f7153882"
  end

  on_linux do
    on_intel do
      url "https://github.com/marturojt/dapctl/releases/download/v1.0.1/dapctl-v1.0.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d619ba0e559bb13b4740a7da596ed311553eb2e118d1c14284c21ef1128544f6"
    end

    on_arm do
      url "https://github.com/marturojt/dapctl/releases/download/v1.0.1/dapctl-v1.0.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "077e29e5d3e2b276ad00683c109a007b54aff1fcf6afb762397d941380049ae3"
    end
  end

  def install
    bin.install "dapctl"
  end

  test do
    assert_match "dapctl #{version}", shell_output("#{bin}/dapctl --version")
  end
end
