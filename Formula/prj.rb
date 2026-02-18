class Prj < Formula
  desc "CLI tool to manage and organize git projects"
  homepage "https://github.com/chandlerroth/current-projects"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chandlerroth/current-projects/releases/download/v#{version}/prj-darwin-arm64.tar.gz"
      sha256 "edd7dddc5d2c1d2b29d0c07b709464ce55a0356ec61f52b9664de7501d309c02"

      def install
        bin.install "prj-darwin-arm64" => "prj"
      end
    end

    on_intel do
      url "https://github.com/chandlerroth/current-projects/releases/download/v#{version}/prj-darwin-x64.tar.gz"
      sha256 "2c6ab8d231db42d8ba81d8cd3cca2f88cb40b051f7aa4cc7655ec6855b30e9b2"

      def install
        bin.install "prj-darwin-x64" => "prj"
      end
    end
  end

  on_linux do
    url "https://github.com/chandlerroth/current-projects/releases/download/v#{version}/prj-linux-x64.tar.gz"
    sha256 "28c0a437e34c4149820644a391a859cae5d96ea63ebff35e8c2cd481f420e226"

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
