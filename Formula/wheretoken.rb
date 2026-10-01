class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.7/wheretoken_darwin_arm64.tar.gz"
      sha256 "2e8cd935a127fba796299758f83ff0b9ebfd583a847cb12780a230229ae6e269"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.7/wheretoken_darwin_amd64.tar.gz"
      sha256 "0528473fccb647518dba745ffa55d5a4e4709c0aab542f7ef088363c15e691db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.7/wheretoken_linux_arm64.tar.gz"
      sha256 "6b35cc20f006816014166e2c17faa7f987d69c71094cbfafa0507c3afc81f418"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.7/wheretoken_linux_amd64.tar.gz"
      sha256 "4a4488afaf07005788c9af35a9243554f8dd89aabbe68f85c98ea3a78890273b"
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
