class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.1.1/wheretoken_darwin_arm64.tar.gz"
      sha256 "5115515e0d2598980e4a154d8e2a369ef218d28be1397fd21e64e78e47b0ee71"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.1.1/wheretoken_darwin_amd64.tar.gz"
      sha256 "bac9a6c6e826957ee660562bc1dbb278891e6a27c99f9caf96d3ec582135f60c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.1.1/wheretoken_linux_arm64.tar.gz"
      sha256 "9c57d9a2eb9d9b32167efc8613be931c38fde8fe48af5e5573a1f043c2706b10"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.1.1/wheretoken_linux_amd64.tar.gz"
      sha256 "9a651c776856dbe1282f8daf787c89db53a4aa5b49cbdd9fd0070765217974f7"
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
