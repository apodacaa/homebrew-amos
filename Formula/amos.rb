class Amos < Formula
  desc "Minimal TUI for journal + todo management with brutalist design"
  homepage "https://github.com/apodacaa/amos"
  url "https://github.com/apodacaa/amos/archive/refs/tags/v1.7.3.tar.gz"
  sha256 "2b427362ffcc7c0a72a7a8881844132d013f4341cad8b4323cf0193d9083fb12"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.Version=1.7.3")
  end

  test do
    assert_match "amos version 1.7.3", shell_output("#{bin}/amos --version")
  end
end
