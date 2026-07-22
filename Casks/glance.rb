cask "glance" do
  version "0.7.0"
  sha256 "874e260eef4c06a1aa25fdae7895c74c1931c38c93901b8f25439ff0f8fe48c3"

  url "https://github.com/ncrohn/glance/releases/download/v#{version}/Glance_#{version}_aarch64.dmg"
  name "Glance"
  desc "Lightweight markdown viewer and editor"
  homepage "https://github.com/ncrohn/glance"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Glance.app"

  zap trash: [
    "~/.glance",
    "~/Library/Application Support/com.escapementlabs.glance",
    "~/Library/Caches/com.escapementlabs.glance",
  ]
end
