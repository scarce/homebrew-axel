cask "sonata" do
  version "0.1.3"
  sha256 "134520ea376ae89ec89a45dcf243e90ed6b55f998bce7e81e67781bcf9f706f8"

  url "https://github.com/lgalabru/sonata/releases/download/v#{version}/Sonata-#{version}.zip"
  name "Sonata"
  desc "Solana leader schedule and validator earnings in the menu bar"
  homepage "https://github.com/lgalabru/sonata"

  depends_on macos: :sequoia

  app "Sonata.app"

  uninstall quit: "dev.sonata.Sonata"

  zap trash: [
    "~/Library/Caches/sonata",
    "~/Library/Preferences/dev.sonata.Sonata.plist",
  ]

  caveats <<~EOS
    This build of Sonata is signed ad hoc, not notarized. If macOS won't open it,
    allow it once in System Settings → Privacy & Security → Open Anyway.
  EOS
end
