class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.8/wheretoken_darwin_arm64.tar.gz"
      sha256 "fb09f507df2b1cf36135187842254ade907d96df4c7ecf23130d7147fc18332c"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.8/wheretoken_darwin_amd64.tar.gz"
      sha256 "933fd78d3b738782980cb6948f610228aa971e46592839c0effeaeb0ffb3d90e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.8/wheretoken_linux_arm64.tar.gz"
      sha256 "73a9350786e11098d5fa3c7ed2cb47f1c18b64e4bfeb9bf00f866c582caecb3c"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.8/wheretoken_linux_amd64.tar.gz"
      sha256 "17cda146ccdb96b65a00f42ee54ef6ab8f96cf6b0868adc7774745c07fa6cc40"
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
