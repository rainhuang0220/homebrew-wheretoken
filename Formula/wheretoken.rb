class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.17/wheretoken_darwin_arm64.tar.gz"
      sha256 "ef13a6ab4affb9b284817cb555e83abcc9b8e0798685bf054da73551fffa3355"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.17/wheretoken_darwin_amd64.tar.gz"
      sha256 "9cc11137efa18efd72925264622fda97e460d3756c5bfdb801c612f0a0a54184"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.17/wheretoken_linux_arm64.tar.gz"
      sha256 "4cd189188ffc42b6603822ad0c747c6d951dbff4afccbd920e6d24bea8654d29"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.17/wheretoken_linux_amd64.tar.gz"
      sha256 "b68011afc3959fdb6271d2198b29ba4d0eab1cb3b7a874fe378aa6167335c37b"
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
