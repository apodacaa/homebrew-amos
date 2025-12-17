class Amos < Formula
  desc "Minimal TUI for journal + todo management with brutalist design"
  homepage "https://github.com/apodacaa/amos"
  url "https://github.com/apodacaa/amos/archive/refs/tags/v1.4.1.tar.gz"
  sha256 "9c54deafa9d1f3279b12bc37f3e1dd04bf641a764e7035226a957e2acefa1065"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.Version=1.4.1")
  end

  test do
    assert_match "amos version 1.4.1", shell_output("#{bin}/amos --version")
  end
end
