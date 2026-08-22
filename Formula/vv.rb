class Vv < Formula
  desc "Print any tool's version as a strict SemVer triple"
  homepage "https://verified-version.org/"
  url "https://github.com/geo4orce/verified-version/archive/refs/tags/v4.1.0.tar.gz"
  sha256 "6db18eea64564f350d0f941983b41dd6c76a96ac4a2a4f842ed7eecffebbe888"
  license "MIT"

  def install
    bin.install "vv"
    man1.install "man/vv.1"
    bash_completion.install "completions/vv.bash" => "vv"
    zsh_completion.install "completions/_vv"
    fish_completion.install "completions/vv.fish"
  end

  test do
    assert_equal "4.1.0", shell_output("#{bin}/vv --verified-version").strip
  end
end
