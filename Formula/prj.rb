class Prj < Formula
  desc "CLI tool to manage and organize git projects"
  homepage "https://github.com/chandlerroth/prj"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chandlerroth/prj/releases/download/v#{version}/prj-darwin-arm64.tar.gz"
      sha256 "7dcfdda5a7dff724cd5e648834c9c46f67655b8b60efd9095e0fbd4df46ba6ff"

      def install
        bin.install "prj-darwin-arm64" => "prj"
      end
    end

    on_intel do
      url "https://github.com/chandlerroth/prj/releases/download/v#{version}/prj-darwin-x64.tar.gz"
      sha256 "3911243af67c8be0f4bce47a89334701c6a613e6a2467e48ee7e95311633e291"

      def install
        bin.install "prj-darwin-x64" => "prj"
      end
    end
  end

  on_linux do
    url "https://github.com/chandlerroth/prj/releases/download/v#{version}/prj-linux-x64.tar.gz"
    sha256 "a3f31fe5c14f6f082d1e507f9a009a828a1b8af802ebcbf1be0b7aea27fde91d"

    def install
      bin.install "prj-linux-x64" => "prj"
    end
  end

  test do
    system "#{bin}/prj", "help"
  end
end
