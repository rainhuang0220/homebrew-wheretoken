class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.2.0/wheretoken_darwin_arm64.tar.gz"
      sha256 "85b91ab3ee07500097c9ccf0a730989aa71b78d3063acb3a8ebd5bb26ae76902"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.2.0/wheretoken_darwin_amd64.tar.gz"
      sha256 "d9bbb66a01e0d9580d148084f0ce0aae1341c60b648cb4ff6498d03a80a65ea9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.2.0/wheretoken_linux_arm64.tar.gz"
      sha256 "3c1bb38fc235b783ca4b246e5f81892b55fa4f3c5f21f63512a543269cdf8644"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.2.0/wheretoken_linux_amd64.tar.gz"
      sha256 "1deda4b4352963072a66892698132bd51c4642107d79fcc1d6494447b29d5539"
    end
  end

  def install
    bin.install "wheretoken"
    bash_completion.install "completions/wheretoken.bash" => "wheretoken"
    zsh_completion.install "completions/_wheretoken"
    fish_completion.install "completions/wheretoken.fish"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/wheretoken --help")
  end
end
