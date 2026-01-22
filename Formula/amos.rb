class Amos < Formula
  desc "Minimal TUI for journal + todo management with brutalist design"
  homepage "https://github.com/apodacaa/amos"
  url "https://github.com/apodacaa/amos/archive/refs/tags/v1.7.2.tar.gz"
  sha256 "47323e8c69e6050be05c89db627e43f42b55449e217a303d3065087c7bbcb1ed"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.Version=1.7.2")
  end

  test do
    assert_match "amos version 1.7.2", shell_output("#{bin}/amos --version")
  end
end
