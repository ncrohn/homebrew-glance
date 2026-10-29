cask "glance" do
  version "0.11.0"
  sha256 "db614c83231d7c7e4cb4a54eb34d6f6789c6ce9ae67f68ef1d6d1816b8d1796f"

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
