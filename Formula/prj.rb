class Prj < Formula
  desc "CLI tool to manage and organize git projects"
  homepage "https://github.com/chandlerroth/prj"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chandlerroth/prj/releases/download/v#{version}/prj-darwin-arm64.tar.gz"
      sha256 "b32a79ff1e3f126bd13fbbfa5df04ef2d8bc0e2fdf6c8d65c1bb7a501cf7d0fd"

      def install
        bin.install "prj-darwin-arm64" => "prj"
      end
    end

    on_intel do
      url "https://github.com/chandlerroth/prj/releases/download/v#{version}/prj-darwin-x64.tar.gz"
      sha256 "4951c75a9b32efb6c5db4fd54ea7d4a27bd0a375c3101561b46bada0c0f35bdc"

      def install
        bin.install "prj-darwin-x64" => "prj"
      end
    end
  end

  on_linux do
    url "https://github.com/chandlerroth/prj/releases/download/v#{version}/prj-linux-x64.tar.gz"
    sha256 "8ea974fafd4bec266c7d81a5cec1ab7c16401bcc7b07ebd1006fe0406443b858"

    def install
      bin.install "prj-linux-x64" => "prj"
    end
  end

  test do
    system "#{bin}/prj", "help"
  end
end
