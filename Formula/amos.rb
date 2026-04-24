class Amos < Formula
  desc "Minimal TUI for journal + todo management with brutalist design"
  homepage "https://github.com/apodacaa/amos"
  url "https://github.com/apodacaa/amos/archive/refs/tags/v1.8.0.tar.gz"
  sha256 "08e5630bef199fe82cb83d6204bb62d01d79e3b42450cddfdc635629d3fd800a"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.Version=1.8.0")
  end

  test do
    assert_match "amos version 1.8.0", shell_output("#{bin}/amos --version")
  end
end
