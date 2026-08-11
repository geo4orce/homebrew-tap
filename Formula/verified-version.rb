class VerifiedVersion < Formula
  desc "Print any tool's version as a strict SemVer triple"
  homepage "https://verified-version.org/"
  url "https://github.com/geo4orce/verified-version/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "01a1f935d6b2e5d6ac5ee6a98f5e3af9fe953a9f415a9e57c2ed82fcd15cacc1"
  license "MIT"

  def install
    bin.install "vv"
    (share/"vv").install "recipes"
    man1.install "man/vv.1"
    bash_completion.install "completions/vv.bash" => "vv"
    zsh_completion.install "completions/_vv"
    fish_completion.install "completions/vv.fish"
  end

  test do
    assert_equal "2.1.0", shell_output("#{bin}/vv --verified-version").strip
  end
end
