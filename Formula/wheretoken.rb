class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.3.0/wheretoken_darwin_arm64.tar.gz"
      sha256 "db6980a22ce08ba1649d39b975d5462ef090bef7bfaa1156800fb02966f34d07"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.3.0/wheretoken_darwin_amd64.tar.gz"
      sha256 "70a9dcbdf3ed98a651504a46755ee07779b17b1a06c273ef6b546613020dd44c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.3.0/wheretoken_linux_arm64.tar.gz"
      sha256 "214ca36a0d1f9d6c418e9b498185bfb0687935438a8dd58ec5ac133c8385176a"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.3.0/wheretoken_linux_amd64.tar.gz"
      sha256 "53251ae9bda42934a1bf525bbe92d039a19fb0efe25cdbc8045a0d678ebbe0d4"
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
