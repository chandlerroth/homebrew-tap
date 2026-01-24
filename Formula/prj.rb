class Prj < Formula
  desc "CLI tool to manage and organize git projects"
  homepage "https://github.com/chandlerroth/current-projects"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chandlerroth/current-projects/releases/download/v#{version}/prj-darwin-arm64.tar.gz"
      sha256 "d217fc7c7bd054ead366fd64582b62cceca72810e7b298614280dbcf4ff1f29f"

      def install
        bin.install "prj-darwin-arm64" => "prj"
      end
    end

    on_intel do
      url "https://github.com/chandlerroth/current-projects/releases/download/v#{version}/prj-darwin-x64.tar.gz"
      sha256 "1247a9c1e19c09ecaf1c0403928f0e05135ead8cfeb2b81d2cee886f46b5ca9d"

      def install
        bin.install "prj-darwin-x64" => "prj"
      end
    end
  end

  on_linux do
    url "https://github.com/chandlerroth/current-projects/releases/download/v#{version}/prj-linux-x64.tar.gz"
    sha256 "f943e3f7e9f1dbf49cd675604883b5b509cb1606a539459b6ae46e167ba6ea7b"

    def install
      bin.install "prj-linux-x64" => "prj"
    end
  end

  def caveats
    <<~EOS
      To enable shell integration (for `prj list` and `prj cd` to change directories),
      add this to your ~/.zshrc or ~/.bashrc:

        curl -o ~/.prj.sh https://raw.githubusercontent.com/chandlerroth/current-projects/main/prj.sh
        source ~/.prj.sh
    EOS
  end

  test do
    system "#{bin}/prj", "help"
  end
end
