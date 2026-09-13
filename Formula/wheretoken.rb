class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.2/wheretoken_darwin_arm64.tar.gz"
      sha256 "41e33c43a23f6862d00aa64fa53a2c3e3a7a58d48b7e66d52ee10de72aa0e3e9"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.2/wheretoken_darwin_amd64.tar.gz"
      sha256 "214f26ca8d130a0605910cf36a994588e5239be7d5adf68bafc6df838af25836"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.2/wheretoken_linux_arm64.tar.gz"
      sha256 "ea5f5e5961dc3ef518b5e3a114aafd7dc269c10ea4e2fed75ed13875eedf9853"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.2/wheretoken_linux_amd64.tar.gz"
      sha256 "12767bce30ce66ce80cf6ed847d7d6d54c8b48bd1f487f0584340cb5f75f4aa6"
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
