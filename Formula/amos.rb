class Amos < Formula
  desc "Minimal TUI for journal + todo management with brutalist design"
  homepage "https://github.com/apodacaa/amos"
  url "https://github.com/apodacaa/amos/archive/refs/tags/v1.8.1.tar.gz"
  sha256 "1b91735f75ca073052bb75736c718f5bc5e37631a04cab310153846a0af598eb"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.Version=1.8.1")
  end

  test do
    assert_match "amos version 1.8.1", shell_output("#{bin}/amos --version")
  end
end
