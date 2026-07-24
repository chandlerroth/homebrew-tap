cask "supercut" do
  version "1.0.892"
  sha256 "d9c2669611d341ab6cced2098f5a619909a3351087a91c580e903ffd4efa0973"

  url "https://macos.supercut.ai/Supercut-#{version}.app.zip"
  name "Supercut"
  homepage "https://supercut.ai/"

  livecheck do
    url "https://macos.supercut.ai/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel == "release" }&.short_version
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Supercut.app"
end
