class Vv < Formula
  desc "Print any tool's version as a strict SemVer triple"
  homepage "https://verified-version.org/"
  url "https://github.com/geo4orce/verified-version/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "4e42f519e72e3e49d9fa4af7ac764b4ec1ded32d5ecdd72aed8739d661969121"
  license "MIT"

  def install
    bin.install "vv"
    man1.install "man/vv.1"
    bash_completion.install "completions/vv.bash" => "vv"
    zsh_completion.install "completions/_vv"
    fish_completion.install "completions/vv.fish"
  end

  test do
    assert_equal "2.2.0", shell_output("#{bin}/vv --verified-version").strip
  end
end
