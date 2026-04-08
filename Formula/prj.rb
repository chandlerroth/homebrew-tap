class Prj < Formula
  desc "CLI tool to manage and organize git projects"
  homepage "https://github.com/chandlerroth/prj"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chandlerroth/prj/releases/download/v#{version}/prj-darwin-arm64.tar.gz"
      sha256 "bc4c3548f8ae0f36cac5b178b7640caaa19f98b26128b1a434b40235c473a321"

      def install
        bin.install "prj-darwin-arm64" => "prj"
      end
    end

    on_intel do
      url "https://github.com/chandlerroth/prj/releases/download/v#{version}/prj-darwin-x64.tar.gz"
      sha256 "320b13bbb88649d2a88f6ddf95a905b7b4c25ff7c2e21ea77537ae908f55ffca"

      def install
        bin.install "prj-darwin-x64" => "prj"
      end
    end
  end

  on_linux do
    url "https://github.com/chandlerroth/prj/releases/download/v#{version}/prj-linux-x64.tar.gz"
    sha256 "ec5807e8f2a94f70513d775ac02d2ca35a8d89da818d8be39ee84c9a727a05d0"

    def install
      bin.install "prj-linux-x64" => "prj"
    end
  end

  test do
    system "#{bin}/prj", "help"
  end
end
