cask "haex-vault" do
  version "2.2.3"
  sha256 arm:   "f5a8909d594404b6445de33759041c01a9643d3d4e52b32d6ac4a338c903009a",
         intel: "771210fc92bfc2f47a58d7ccbafb0ac85bc7052ee11b6d5b8693b53e9b76eaf0"

  url "https://github.com/haex-space/haex-vault/releases/download/v#{version}/Haex.Vault_#{version}_#{Hardware::CPU.intel? ? "x64" : "aarch64"}.dmg",
      verified: "github.com/haex-space/haex-vault/"
  name "Haex Vault"
  desc "Build once. Run everywhere. Sync automatically"
  homepage "https://haex.space"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: ">= :big_sur"

  app "Haex Vault.app"

  zap trash: [
    "~/Library/Application Support/space.haex.vault",
    "~/Library/Caches/space.haex.vault",
    "~/Library/Preferences/space.haex.vault.plist",
    "~/Library/Saved Application State/space.haex.vault.savedState",
  ]
end
