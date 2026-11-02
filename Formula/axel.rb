# Written by the release workflow in https://github.com/lgalabru/axel; edits here are overwritten.
class Axel < Formula
  desc "Agent orchestration, designed for Rex"
  homepage "https://axel.md"
  version "0.3.80"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.80/axel-0.3.80-aarch64-apple-darwin.tar.gz"
    sha256 "8eae954c9ad4aab974eb6f2423c403d7cdaf2704cd5ce73de312a679f21e7861"
  end
  on_intel do
    url "https://github.com/lgalabru/axel/releases/download/v0.3.80/axel-0.3.80-x86_64-apple-darwin.tar.gz"
    sha256 "83786281da5cbbdb2c86df8e28237f1e582e34938151f84d458a77c5db964bbb"
  end

  def install
    bin.install "axel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axel --version")
  end
end
