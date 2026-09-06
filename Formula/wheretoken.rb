class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.0/wheretoken_darwin_arm64.tar.gz"
      sha256 "51be473ac74d7b6fc9b1fe095b56742676b4ce6bc598540bf240f7bf6caf3cf7"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.0/wheretoken_darwin_amd64.tar.gz"
      sha256 "82c75c0fde02ca7b8dab6e2193c847199d5caaf5a4fb630b88ab574d86d72623"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.0/wheretoken_linux_arm64.tar.gz"
      sha256 "8ae013ea445fb07f33a1e4b011d40a8e16a09bbbd1eb9a8c4c50ae234c762924"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.0/wheretoken_linux_amd64.tar.gz"
      sha256 "4707a765b97618112cfdaa57f68a5fa0afcf95e3a028a43559c02f061473d26f"
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
