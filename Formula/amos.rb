class Amos < Formula
  desc "Minimal TUI for journal + todo management with brutalist design"
  homepage "https://github.com/apodacaa/amos"
  url "https://github.com/apodacaa/amos/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "59521ad2ff1e72e0ff00704a4207797f755ff8f5021affa038da365fe8da4ae5"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.Version=1.0.0")
  end

  test do
    assert_match "amos version 1.0.0", shell_output("#{bin}/amos --version")
  end
end
