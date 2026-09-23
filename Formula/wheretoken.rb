class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  version "0.7.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.4/wheretoken_darwin_arm64.tar.gz"
      sha256 "ac533101f3f769c609d8fff8500040399b0016c5f36aaa84b8d6651d336e702d"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.4/wheretoken_darwin_amd64.tar.gz"
      sha256 "894f34d316ffc1c111259650662dda3063bc73fc2bd830fdc3ab35b2ddcfc2e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.4/wheretoken_linux_arm64.tar.gz"
      sha256 "746af8b9a2f4813c90243579025cf208c746ba7a6685efde6092923969c6aa93"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.4/wheretoken_linux_amd64.tar.gz"
      sha256 "798064214dc6cacd41cfba0f882246c67bbc06f45f5eca6926fb476a830aaf7e"
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
