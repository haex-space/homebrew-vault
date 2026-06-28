cask "haex-vault" do
  version "2.12.0"
  sha256 arm:   "d0b4b8033ca6c9697a84bd9a69a88d358a018ad195a8cfe49d3339735cca54e8",
         intel: "5d76de19f7eae64e829145c6a0f6943e0ca63097de3b7f98225c72efdfeb4c45"

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
