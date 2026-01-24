class Prj < Formula
  desc "CLI tool to manage and organize git projects"
  homepage "https://github.com/chandlerroth/current-projects"
  version "1.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chandlerroth/current-projects/releases/download/v#{version}/prj-darwin-arm64.tar.gz"
      sha256 "ba7bc3c15ffb445d1025c547a5d6c895a128957be881bd0b0df986c3cdf4acf0"

      def install
        bin.install "prj-darwin-arm64" => "prj"
      end
    end

    on_intel do
      url "https://github.com/chandlerroth/current-projects/releases/download/v#{version}/prj-darwin-x64.tar.gz"
      sha256 "f38dbb6b587917a164d9164f7b6f45a2e17afd3ac2c27c305b08830bc9df6b12"

      def install
        bin.install "prj-darwin-x64" => "prj"
      end
    end
  end

  on_linux do
    url "https://github.com/chandlerroth/current-projects/releases/download/v#{version}/prj-linux-x64.tar.gz"
    sha256 "7ff79e00227e47de64c903ed472c49e2695051bc7dc32a318f4727b2ad0c4ab6"

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
