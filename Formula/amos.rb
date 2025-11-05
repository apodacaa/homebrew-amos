class Amos < Formula
  desc "Minimal TUI for journal + todo management with brutalist design"
  homepage "https://github.com/apodacaa/amos"
  url "https://github.com/apodacaa/amos/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "259c02be499aae07375a74bd34e1c341cfab1ab6e94a85876a68182d3e9c9dc5"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.Version=1.2.1")
  end

  test do
    assert_match "amos version 1.2.1", shell_output("#{bin}/amos --version")
  end
end
