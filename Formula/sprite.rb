class Sprite < Formula
  desc "CLI for managing persistent, hardware-isolated Linux microVMs"
  homepage "https://docs.sprites.dev"
  version "0.0.1-rc43"

  on_macos do
    on_arm do
      url "https://sprites-binaries.t3.storage.dev/client/v#{version}/sprite-darwin-arm64.tar.gz"
      sha256 "eb3b71739f5bd87efafa8ee4ef330ebc0fcf00e89be26ed6457a355ec8a02f4e"
    end

    on_intel do
      url "https://sprites-binaries.t3.storage.dev/client/v#{version}/sprite-darwin-amd64.tar.gz"
      sha256 "362efbf5e24815b650ff3ac0037cd0c9814543b8a4114f5460bf4678ed4e70a0"
    end
  end

  on_linux do
    on_arm do
      url "https://sprites-binaries.t3.storage.dev/client/v#{version}/sprite-linux-arm64.tar.gz"
      sha256 "61334795592795593252c888e36d90ba8d380b220cc426eb8e13ef1800c7c36b"
    end

    on_intel do
      url "https://sprites-binaries.t3.storage.dev/client/v#{version}/sprite-linux-amd64.tar.gz"
      sha256 "c040a5bf1e0abfb58ae2e318c0d26abecbe3c90b289c8d35c650a8df3ec2bb04"
    end
  end

  def install
    bin.install "sprite"
  end

  test do
    system "#{bin}/sprite", "--help"
  end
end
