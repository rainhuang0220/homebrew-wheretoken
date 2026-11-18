class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.20/wheretoken_darwin_arm64.tar.gz"
      sha256 "8f6d00b22bebb4a8cce010462031dad5d485da4dd63b1d39e650992f68107ed9"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.20/wheretoken_darwin_amd64.tar.gz"
      sha256 "83750857bb48c80f0123cac60dfd7f9508938ede9165c4711767761d41f14d0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.20/wheretoken_linux_arm64.tar.gz"
      sha256 "d083d29a53dad2e4a96e4631b8a1c75d6fc857a49194cceec1a8d276904974c4"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.20/wheretoken_linux_amd64.tar.gz"
      sha256 "2f43ecfe428297c596af0f24c61959dc88afe83b61561a7efd083a52648e557a"
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
