class Vv < Formula
  desc "Print an installed tool's version as a strict SemVer triple"
  homepage "https://verified-version.org/"
  url "https://github.com/geo4orce/verified-version/archive/refs/tags/v5.0.1.tar.gz"
  sha256 "19510bcc4baa890594b3c534d026c3d18a07ee8c3f3e56e78e88d6fca0f37379"
  license "MIT"

  def install
    bin.install "vv"
    man1.install "man/vv.1"
    bash_completion.install "completions/vv.bash" => "vv"
    zsh_completion.install "completions/_vv"
    fish_completion.install "completions/vv.fish"
  end

  test do
    assert_equal "5.0.1", shell_output("#{bin}/vv --verified-version").strip
  end
end
