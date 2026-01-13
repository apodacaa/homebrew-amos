class Amos < Formula
  desc "Minimal TUI for journal + todo management with brutalist design"
  homepage "https://github.com/apodacaa/amos"
  url "https://github.com/apodacaa/amos/archive/refs/tags/v1.6.2.tar.gz"
  sha256 "4960a417cbdccee12c32bb49165a841f48b2d6a5c39bab3a8c71c2f8f84a82dc"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.Version=1.6.2")
  end

  test do
    assert_match "amos version 1.6.2", shell_output("#{bin}/amos --version")
  end
end
