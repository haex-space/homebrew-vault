cask "haex-vault" do
  version "2.11.0"
  sha256 arm:   "d1b45aaa36b4744a047a9f46f0536027be4962b44c8f8cf2d7ada5c6ad3edd76",
         intel: "3be88ceb948755df5e40ed5974b328d2078b9710a1f1a6e9aa391b08bc7da642"

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
