class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.10/wheretoken_darwin_arm64.tar.gz"
      sha256 "0a394e9f2d9c1e2174ed174dfaef5143488246bbfc74d05a78450552bc2a2491"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.10/wheretoken_darwin_amd64.tar.gz"
      sha256 "f02d749bd9724627e1d34083392581b25aeb14b901de3b0ca7b37643fda46d01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.10/wheretoken_linux_arm64.tar.gz"
      sha256 "216db2b5900a4c7f20b121a2ba2b18890e280680a763518bab3c857f1228c5b7"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.10/wheretoken_linux_amd64.tar.gz"
      sha256 "d1a5d923c6eb75dea896286b815ac98c66802ebfb6a75361bef33815e47a15ae"
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
