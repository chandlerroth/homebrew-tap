cask "libation" do
  version "12.4.7"

  on_arm do
    sha256 "d906c996d1d1b97ad45ea3538d856b5be6303541b35ba7497e45f8b5b149668b"

    url "https://github.com/rmcrackan/Libation/releases/download/v#{version}/Libation.#{version}-macOS-chardonnay-arm64.tgz"
  end
  on_intel do
    sha256 "9a66190ace74ca1e4f31c7a4afe29a9740d16fed7e64b230d11f4c9c2ebe87b6"

    url "https://github.com/rmcrackan/Libation/releases/download/v#{version}/Libation.#{version}-macOS-chardonnay-x64.tgz"
  end

  name "Libation"
  desc "Free, open source audible library manager"
  homepage "https://github.com/rmcrackan/Libation"

  app "Libation.app"
end
