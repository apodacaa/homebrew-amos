class Amos < Formula
  desc "Minimal TUI for journal + todo management with brutalist design"
  homepage "https://github.com/apodacaa/amos"
  url "https://github.com/apodacaa/amos/archive/refs/tags/v1.7.0.tar.gz"
  sha256 "716bd5909f84abb34d3fafbeef556d8ddd717668aad87b294964c4eb6bd08e97"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.Version=1.7.0")
  end

  test do
    assert_match "amos version 1.7.0", shell_output("#{bin}/amos --version")
  end
end
