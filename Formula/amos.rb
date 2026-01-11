class Amos < Formula
  desc "Minimal TUI for journal + todo management with brutalist design"
  homepage "https://github.com/apodacaa/amos"
  url "https://github.com/apodacaa/amos/archive/refs/tags/v1.6.0.tar.gz"
  sha256 "86ee61a60240b0d018d460ca63c26714b2d8d26508123615cefb7db7bd1b86d2"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.Version=1.6.0")
  end

  test do
    assert_match "amos version 1.6.0", shell_output("#{bin}/amos --version")
  end
end
