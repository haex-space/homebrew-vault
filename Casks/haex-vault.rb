cask "haex-vault" do
  version "1.25.0"
  sha256 arm:   "493189c54964dffcfcb2334390c52ad8703f86e6d541a8ca9041c3064918bc42",
         intel: "a19501de12a6c2ba0d1c8ea046bb17ec44278a42a5fc00b07d7fb6b601350a10"

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
