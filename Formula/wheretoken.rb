class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.14/wheretoken_darwin_arm64.tar.gz"
      sha256 "dcadb1614d6a035e274c525d1c6dbfe1fde7697293eeda47ee7ebd10ca69cf6d"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.14/wheretoken_darwin_amd64.tar.gz"
      sha256 "a12570da610baf354ee348c3f976ec5344528686c06e3342e819ff4d3a0802cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.14/wheretoken_linux_arm64.tar.gz"
      sha256 "5fbc8e91f3728508604ce9c2dc008e1130624b38ade4fa1a3b3b4996e60908f9"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.14/wheretoken_linux_amd64.tar.gz"
      sha256 "eca8ed911b60d81267aa1c264ab494185441717c44595bf4ae50ee6201c1d948"
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
