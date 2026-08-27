class Vv < Formula
  desc "Print an installed tool's version as a strict SemVer triple"
  homepage "https://verified-version.org/"
  url "https://github.com/geo4orce/verified-version/archive/refs/tags/v5.0.0.tar.gz"
  sha256 "ff77c436c0ea1ada626f4f8fb8beea219bf28ca0d23214bcb1159ba444955e2b"
  license "MIT"

  def install
    bin.install "vv"
    man1.install "man/vv.1"
    bash_completion.install "completions/vv.bash" => "vv"
    zsh_completion.install "completions/_vv"
    fish_completion.install "completions/vv.fish"
  end

  test do
    assert_equal "5.0.0", shell_output("#{bin}/vv --verified-version").strip
  end
end
