class Prj < Formula
  desc "CLI tool to manage and organize git projects"
  homepage "https://github.com/chandlerroth/prj"
  version "1.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chandlerroth/prj/releases/download/v#{version}/prj-darwin-arm64.tar.gz"
      sha256 "4bad6016bd1678577467f5df6addc28d8ae0437f15b0f9a5d8d44ed5ffa03710"

      def install
        bin.install "prj-darwin-arm64" => "prj"
      end
    end

    on_intel do
      url "https://github.com/chandlerroth/prj/releases/download/v#{version}/prj-darwin-x64.tar.gz"
      sha256 "63f74a9edd99940ce38128e662588f46ba28b15ed40e9f2ade2dac787e0610e9"

      def install
        bin.install "prj-darwin-x64" => "prj"
      end
    end
  end

  on_linux do
    url "https://github.com/chandlerroth/prj/releases/download/v#{version}/prj-linux-x64.tar.gz"
    sha256 "ad866ace80b9f6790b53ba83ff553fd0b740bf63de36be015b490076d84f33cc"

    def install
      bin.install "prj-linux-x64" => "prj"
    end
  end

  test do
    system "#{bin}/prj", "help"
  end
end
