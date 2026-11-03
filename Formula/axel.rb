# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.82"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.82/axel-0.3.82-aarch64-apple-darwin.tar.gz"
    sha256 "e3f75b333b1e29991d9c91647d8161ba253b4aa2a0da3839d09bff9b3352947a"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.82/axel-0.3.82-x86_64-apple-darwin.tar.gz"
    sha256 "6847978fa1b9af751f3f4efac03642d6b85c872ddc86178199ba2a863d97bded"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
