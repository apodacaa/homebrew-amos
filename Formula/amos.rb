class Amos < Formula
  desc "Minimal TUI for journal + todo management with brutalist design"
  homepage "https://github.com/apodacaa/amos"
  url "https://github.com/apodacaa/amos/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "d38d2a4a6c6340b10814c3a055b9df2b5519fc1271b243439296ea281928f6c5"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.Version=1.5.0")
  end

  test do
    assert_match "amos version 1.5.0", shell_output("#{bin}/amos --version")
  end
end
