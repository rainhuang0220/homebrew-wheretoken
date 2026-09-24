class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  version "0.7.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.5/wheretoken_darwin_arm64.tar.gz"
      sha256 "f7d9e076c772f1c0219b93cc41fe55e985041814dd47ec5044b0ae0fb89d910f"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.5/wheretoken_darwin_amd64.tar.gz"
      sha256 "865cbbec464c2f89d928be724449c2edc7253627004a94fed185e5fede97f51a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.5/wheretoken_linux_arm64.tar.gz"
      sha256 "4ab26480be6efb86260bda592f0186a123210e12f0a7c7de4a32d5a18fdfa733"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.5/wheretoken_linux_amd64.tar.gz"
      sha256 "bbfcb4e81b798af10c8360d065e17c4c891fa05a8e6498f55acac96c9a485488"
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
