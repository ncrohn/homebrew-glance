cask "glance" do
  version "0.7.1"
  sha256 "2776e1f63f004cb76669ba1f6db2edeebf6183090c7c6e59864fee58cd50f88f"

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
