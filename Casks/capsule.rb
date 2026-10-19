cask "capsule" do
  version "0.4.0"
  sha256 "56fea1c0cb72513dd9f75799aeae943ab774195d860e913a105952576e3f8781"

  url "https://github.com/antick/capsule/releases/download/v#{version}/Capsule-#{version}-arm64.zip"
  name "Capsule"
  desc "Always-on-top dock for AI coding usage limits"
  homepage "https://github.com/antick/capsule"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Capsule.app"
  binary "#{appdir}/Capsule.app/Contents/Helpers/capsule"

  uninstall quit: "com.antick.capsule"

  zap trash: [
    "~/Library/Application Support/Capsule",
    "~/Library/Caches/com.antick.capsule",
    "~/Library/HTTPStorages/com.antick.capsule",
    "~/Library/Preferences/com.antick.capsule.plist",
  ]
end
