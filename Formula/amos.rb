class Amos < Formula
  desc "Minimal TUI for journal + todo management with brutalist design"
  homepage "https://github.com/apodacaa/amos"
  url "https://github.com/apodacaa/amos/archive/refs/tags/v1.6.1.tar.gz"
  sha256 "3f17e57698f2f48666b5806b4f7fe992716bfe9d3686d1de413d32bbb9b886e9"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.Version=1.6.1")
  end

  test do
    assert_match "amos version 1.6.1", shell_output("#{bin}/amos --version")
  end
end
