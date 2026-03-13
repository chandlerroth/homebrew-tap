class ClayCli < Formula
  desc "CLI tool for searching Clay.earth contacts"
  homepage "https://github.com/chandlerroth/clay-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chandlerroth/clay-cli/releases/download/v#{version}/clay-darwin-arm64.tar.gz"
      sha256 "85a83ddbe6240f5054e85b0b875ba46ea308820ce125aa01571a6feaff4a9b72"

      def install
        bin.install "clay-darwin-arm64" => "clay"
      end
    end

    on_intel do
      url "https://github.com/chandlerroth/clay-cli/releases/download/v#{version}/clay-darwin-x64.tar.gz"
      sha256 "4887bd17427653235fad528425c0370039216fa896770c365df2c2368a6e19fa"

      def install
        bin.install "clay-darwin-x64" => "clay"
      end
    end
  end

  on_linux do
    url "https://github.com/chandlerroth/clay-cli/releases/download/v#{version}/clay-linux-x64.tar.gz"
    sha256 "64012290b21125d72135b4ce0406050d685d35b1266bcf3fd5eb9182f9015476"

    def install
      bin.install "clay-linux-x64" => "clay"
    end
  end

  test do
    system "#{bin}/clay", "--help"
  end
end
