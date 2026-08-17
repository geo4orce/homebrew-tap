class Vv < Formula
  desc "Print any tool's version as a strict SemVer triple"
  homepage "https://verified-version.org/"
  url "https://github.com/geo4orce/verified-version/archive/refs/tags/v4.0.0.tar.gz"
  sha256 "77f425002852fb5b9ee96c372c65d4d6d3b0e210f070085e99daa188accaecf6"
  license "MIT"

  def install
    bin.install "vv"
    man1.install "man/vv.1"
    bash_completion.install "completions/vv.bash" => "vv"
    zsh_completion.install "completions/_vv"
    fish_completion.install "completions/vv.fish"
  end

  test do
    assert_equal "4.0.0", shell_output("#{bin}/vv --verified-version").strip
  end
end
