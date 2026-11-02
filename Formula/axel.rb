# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.81"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.81/axel-0.3.81-aarch64-apple-darwin.tar.gz"
    sha256 "ed6e4faf66a9826d3cae5a1e65753eee3b253403bd0c59306ca6956ac61bb604"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.81/axel-0.3.81-x86_64-apple-darwin.tar.gz"
    sha256 "81d28f5102b005eae30bf0f18e32bb3ee6ad39ca81761a13ec827eef0998fa06"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
