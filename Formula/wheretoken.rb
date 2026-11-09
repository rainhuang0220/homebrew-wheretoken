class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.15/wheretoken_darwin_arm64.tar.gz"
      sha256 "a05c6634b56ad19e12018fdab9d1131f8d0825f1f7eb6ea354daee781a4b9e5e"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.15/wheretoken_darwin_amd64.tar.gz"
      sha256 "0dc9f489f17d4cbb8beee1ece7741a7b8f1a0cbd52def1b14029f6295d66e857"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.15/wheretoken_linux_arm64.tar.gz"
      sha256 "5dc1066794af1079690c5b8bf29919d22658dbcda9e06d620ada43ab6cfc4423"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.15/wheretoken_linux_amd64.tar.gz"
      sha256 "46935babadc257413ef6569dfa9dc2b2ddb767bd2c64072812fbbc4b992a4e40"
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
