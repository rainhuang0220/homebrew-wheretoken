class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.16/wheretoken_darwin_arm64.tar.gz"
      sha256 "c1f80af4a25860e5e03bc0c3e60f1ef5ab488da6e1f7dc7169843b73f24b6dbc"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.16/wheretoken_darwin_amd64.tar.gz"
      sha256 "ba40e06b64e13f1754d7e73a0698329d8d8e09a1edf597b88caf80442a634d01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.16/wheretoken_linux_arm64.tar.gz"
      sha256 "3b4d0df5288ee5af822727deecc9d216b53f56db5ffaf7d6c6f1a71b79624a4b"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.16/wheretoken_linux_amd64.tar.gz"
      sha256 "08427ffeab2bf0afeb1b80ae36b3f990d76e81f4688e7d6b44b65bfbfa4f9b78"
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
