class ClayCli < Formula
  desc "CLI tool for searching Clay.earth contacts"
  homepage "https://github.com/chandlerroth/clay-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chandlerroth/clay-cli/releases/download/v#{version}/clay-darwin-arm64.tar.gz"
      sha256 "0480d05058445b7312daed0b553586f7704011dc6002778528fb581a068832a7"

      def install
        bin.install "clay-darwin-arm64" => "clay"
      end
    end

    on_intel do
      url "https://github.com/chandlerroth/clay-cli/releases/download/v#{version}/clay-darwin-x64.tar.gz"
      sha256 "fcc858bf0fb5cd3a41063d1508a0220b5bf2bae9da9f08db5ce29d1c99f81404"

      def install
        bin.install "clay-darwin-x64" => "clay"
      end
    end
  end

  on_linux do
    url "https://github.com/chandlerroth/clay-cli/releases/download/v#{version}/clay-linux-x64.tar.gz"
    sha256 "8385b4d2b2733abe800f9c23455bfe9392e5b4b50caea1f6210cf2e445c36c9c"

    def install
      bin.install "clay-linux-x64" => "clay"
    end
  end

  test do
    system "#{bin}/clay", "--help"
  end
end
