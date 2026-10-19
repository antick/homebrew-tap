cask "capsule" do
  version "0.3.0"
  sha256 "baad291d48f0829e20d1fa11b832d5daf079bd894093cf9b057cb5ee773117c0"

  url "https://github.com/antick/capsule/releases/download/v#{version}/Capsule-#{version}-arm64.zip"
  name "Capsule"
  desc "Always-on-top dock for AI coding usage limits"
  homepage "https://github.com/antick/capsule"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Capsule.app"
  uninstall quit: "com.antick.capsule"

  zap trash: [
    "~/Library/Application Support/Capsule",
    "~/Library/Caches/com.antick.capsule",
    "~/Library/HTTPStorages/com.antick.capsule",
    "~/Library/Preferences/com.antick.capsule.plist",
  ]
end
