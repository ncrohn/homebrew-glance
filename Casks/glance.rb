cask "glance" do
  version "0.10.1"
  sha256 "6abf4f924f91ed230675f9bad056032078e062198ebfab80701abed7df6e1764"

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
