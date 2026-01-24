class Prj < Formula
  desc "CLI tool to manage and organize git projects"
  homepage "https://github.com/chandlerroth/current-projects"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chandlerroth/current-projects/releases/download/v#{version}/prj-darwin-arm64.tar.gz"
      sha256 "b63076d063f3070fe06d79faa2bbe04df7b537e849775cd580ff3f58b006a58d"

      def install
        bin.install "prj-darwin-arm64" => "prj"
      end
    end

    on_intel do
      url "https://github.com/chandlerroth/current-projects/releases/download/v#{version}/prj-darwin-x64.tar.gz"
      sha256 "d674ebf30031f4a33f6f25461fa5fccdbd48be918a24898b0cead1942c3d918e"

      def install
        bin.install "prj-darwin-x64" => "prj"
      end
    end
  end

  on_linux do
    url "https://github.com/chandlerroth/current-projects/releases/download/v#{version}/prj-linux-x64.tar.gz"
    sha256 "5beb1988717b0398a4a47e345e45da19c7804304e5ee0a11cc2b29aabacdea4d"

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
