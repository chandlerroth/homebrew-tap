class Prj < Formula
  desc "CLI tool to manage and organize git projects"
  homepage "https://github.com/chandlerroth/prj"
  version "1.7.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chandlerroth/prj/releases/download/v#{version}/prj-darwin-arm64.tar.gz"
      sha256 "0c8ed3a5a523f8f4efa8ded8a7fcb74839f26cc24fc8756bd02e38400420d8ea"

      def install
        bin.install "prj-darwin-arm64" => "prj"
      end
    end

    on_intel do
      url "https://github.com/chandlerroth/prj/releases/download/v#{version}/prj-darwin-x64.tar.gz"
      sha256 "6ccff047e5ff2a3d9703115ea97a0c908aa8e1f6d74bf33f7e93e0e0eff2ce71"

      def install
        bin.install "prj-darwin-x64" => "prj"
      end
    end
  end

  on_linux do
    url "https://github.com/chandlerroth/prj/releases/download/v#{version}/prj-linux-x64.tar.gz"
    sha256 "f97b99a9fdce4cd33afd6a3f8b94fbd305c66a83b257791802dd4bef1716e136"

    def install
      bin.install "prj-linux-x64" => "prj"
    end
  end

  test do
    system "#{bin}/prj", "help"
  end
end
