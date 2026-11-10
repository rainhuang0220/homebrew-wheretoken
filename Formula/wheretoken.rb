class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.19/wheretoken_darwin_arm64.tar.gz"
      sha256 "a7b019c98fd5b46bdcb6d4adf77580df63d6ccedff28672c59f6181c0a680676"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.19/wheretoken_darwin_amd64.tar.gz"
      sha256 "e71aa0bd4f5a75f2fab374720a4e32d17fdc782df1a2fc2fe10255bf848d81ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.19/wheretoken_linux_arm64.tar.gz"
      sha256 "2bf12e506948593491a1a5cf86d26696ff8d61b56ca6897cee07b6d707841a14"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.19/wheretoken_linux_amd64.tar.gz"
      sha256 "f1a759dd620a396886cc65342fa4d647e3798714d0840e2e6823f340161f2abe"
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
