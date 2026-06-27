cask "haex-vault" do
  version "2.11.3"
  sha256 arm:   "458f6af0fbc44fa6ce173f54dcec6c0aa74ec770a7b1cf71f44b53d542204093",
         intel: "d65b0c50f8112ee2f7365872bc6ae31a01c95951caf407efd8b19a9a57126a8f"

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
