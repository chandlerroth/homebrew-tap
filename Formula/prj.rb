class Prj < Formula
  desc "CLI tool to manage and organize git projects"
  homepage "https://github.com/chandlerroth/current-projects"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chandlerroth/current-projects/releases/download/v#{version}/prj-darwin-arm64.tar.gz"
      sha256 "843f0c57b8bb735e43abfba8d87ad20ce241450d11fc4bd8abc54f5c6f406270"

      def install
        bin.install "prj-darwin-arm64" => "prj"
      end
    end

    on_intel do
      url "https://github.com/chandlerroth/current-projects/releases/download/v#{version}/prj-darwin-x64.tar.gz"
      sha256 "c8fb2f5d9d73e8a1b6dbb15e7356df12f0fc88330ea98249802f942ee32a7567"

      def install
        bin.install "prj-darwin-x64" => "prj"
      end
    end
  end

  on_linux do
    url "https://github.com/chandlerroth/current-projects/releases/download/v#{version}/prj-linux-x64.tar.gz"
    sha256 "eee7c4949b7271a4186f23be1ebdd000ab691d28d0126da778dcb4c1bad0463a"

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
