class Termdoc < Formula
  desc "Universal document viewer for the terminal"
  homepage "https://termdoc.app"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    url "https://github.com/marturojt/termdoc/releases/download/v0.2.0/termdoc-v0.2.0-universal-apple-darwin.tar.gz"
    sha256 "cf22e340e214592530e9558861e01dfcfcbfa422834c04b9e7fb3b65dfea3bf4"
  end

  on_linux do
    on_intel do
      url "https://github.com/marturojt/termdoc/releases/download/v0.2.0/termdoc-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e118572644690e28a4feba45bae1261fe0587b22d72aee0c7120a3898b73f60"
    end

    on_arm do
      url "https://github.com/marturojt/termdoc/releases/download/v0.2.0/termdoc-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "84e7bfdbd3da29f7ac115c99bbf3b0b65cc0965e8b5e5d84c0850f227c6e4778"
    end
  end

  def install
    bin.install "termdoc"
  end

  test do
    assert_match "termdoc #{version}", shell_output("#{bin}/termdoc --version")

    # The binary has to actually read documents, not just print its version.
    (testpath/"t.md").write("# hello\n\nsome **text**\n")
    assert_match "some text", shell_output("#{bin}/termdoc #{testpath}/t.md")
    assert_match "yaml", shell_output("#{bin}/termdoc --formats")
  end
end
