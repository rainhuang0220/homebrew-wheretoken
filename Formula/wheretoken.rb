class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.1/wheretoken_darwin_arm64.tar.gz"
      sha256 "09bde9115dfbff15918765e88f29c616e8e12197df570df843ee83babbd08ba2"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.1/wheretoken_darwin_amd64.tar.gz"
      sha256 "02f4a9c7db44c92b155798064e41b5e59374e15ae4643c213270f7bfbc3d57d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.1/wheretoken_linux_arm64.tar.gz"
      sha256 "cd1c889e69b914f5bcd93cd4dee743b389ddee82879a57054fe54865139a05a3"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.1/wheretoken_linux_amd64.tar.gz"
      sha256 "2cbb0e8bdfa6fc86c85724e7896a34406c78669c69e5de3ffc007659c4f3a4a6"
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
