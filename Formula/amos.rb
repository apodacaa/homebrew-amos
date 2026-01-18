class Amos < Formula
  desc "Minimal TUI for journal + todo management with brutalist design"
  homepage "https://github.com/apodacaa/amos"
  url "https://github.com/apodacaa/amos/archive/refs/tags/v1.7.1.tar.gz"
  sha256 "7ad58a5319f92a1d1245dfff83e48539e5f837763cd9531403df0ee3daa21b43"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.Version=1.7.1")
  end

  test do
    assert_match "amos version 1.7.1", shell_output("#{bin}/amos --version")
  end
end
