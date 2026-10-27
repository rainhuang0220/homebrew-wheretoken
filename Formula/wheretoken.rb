class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.9/wheretoken_darwin_arm64.tar.gz"
      sha256 "95425fe17406bb4161f0ed806ff469f2e4c953a6b4bb113e5f2920663f05fec7"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.9/wheretoken_darwin_amd64.tar.gz"
      sha256 "9d397c57e4548a906075d009398b111deb77d2dc2034e608f54d2084194870cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.9/wheretoken_linux_arm64.tar.gz"
      sha256 "71dc32af3dd9ddd747734687a63d8d4385ca0e974e52b0b88828408b3f22084c"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.9/wheretoken_linux_amd64.tar.gz"
      sha256 "73c7f791c2edcab3fe27ce334a1aebd4f0c7ec8ff97d2bd1bdbd5c90b318dcfc"
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
