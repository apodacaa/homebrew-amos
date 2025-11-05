class Amos < Formula
  desc "Minimal TUI for journal + todo management with brutalist design"
  homepage "https://github.com/apodacaa/amos"
  url "https://github.com/apodacaa/amos/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "3acd3140882a1524cbf6776c1754fc043b99b48b9c7d581bcb5f61095a6f7f92"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.Version=1.2.0")
  end

  test do
    assert_match "amos version 1.2.0", shell_output("#{bin}/amos --version")
  end
end
