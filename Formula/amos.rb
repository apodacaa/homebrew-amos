class Amos < Formula
  desc "Minimal TUI for journal + todo management with brutalist design"
  homepage "https://github.com/apodacaa/amos"
  url "https://github.com/apodacaa/amos/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "624fa59f393de2b43c73961f322cc4b877fc338017dcbbf3a3f860a4e44763ee"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.Version=1.3.0")
  end

  test do
    assert_match "amos version 1.3.0", shell_output("#{bin}/amos --version")
  end
end
