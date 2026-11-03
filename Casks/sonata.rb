cask "sonata" do
  version "0.1.2"
  sha256 "83ad1d1b7e8f7184a50a55a5e512a44a9e3ed0e75ce39bbc43aa8479d0404b12"

  url "https://github.com/lgalabru/sonata/releases/download/v#{version}/Sonata-#{version}.zip"
  name "Sonata"
  desc "Solana leader schedule and validator earnings in the menu bar"
  homepage "https://github.com/lgalabru/sonata"

  depends_on macos: ">= :sequoia"

  app "Sonata.app"

  # This build is signed ad hoc, not notarized: clear the download quarantine so it opens.
  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Sonata.app"]
  end

  uninstall quit: "dev.sonata.Sonata"

  zap trash: [
    "~/Library/Caches/sonata",
    "~/Library/Preferences/dev.sonata.Sonata.plist",
  ]
end
