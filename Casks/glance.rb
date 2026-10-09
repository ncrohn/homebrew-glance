cask "glance" do
  version "0.8.5"
  sha256 "2f79fa6d577d09d3d728ff4f305d0ff7b74076eed120e1912097dd857dbcc5d7"

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
