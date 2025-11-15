class Amos < Formula
  desc "Minimal TUI for journal + todo management with brutalist design"
  homepage "https://github.com/apodacaa/amos"
  url "https://github.com/apodacaa/amos/archive/refs/tags/v1.3.1.tar.gz"
  sha256 "df1db9f9d5a13db589750ebc436f675e3d6ddc0c05a0a84a0ffb6d4d207951fa"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.Version=1.3.1")
  end

  test do
    assert_match "amos version 1.3.1", shell_output("#{bin}/amos --version")
  end
end
