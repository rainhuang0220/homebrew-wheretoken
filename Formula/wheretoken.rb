class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.6.1/wheretoken_darwin_arm64.tar.gz"
      sha256 "3ef085a8e08a0f04443ac06d9421584445ba8447fcb44d3406a9705b727d7a5c"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.6.1/wheretoken_darwin_amd64.tar.gz"
      sha256 "442af58e5ac26cfc44c325f6efea3e783533dda32af853efba77161e3db8578d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.6.1/wheretoken_linux_arm64.tar.gz"
      sha256 "4f9d2b0db81caa233a10ef6bd13b4b3816da92c365f8c797a26286d17d2b1c2f"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.6.1/wheretoken_linux_amd64.tar.gz"
      sha256 "2da9e4199dd4c22e620806756bbc32b7b284b1acff6fc7b06c30abed6ef882b2"
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
