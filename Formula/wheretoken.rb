class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.13/wheretoken_darwin_arm64.tar.gz"
      sha256 "6aecbf6b50595993c67981181c78cd6c851706f43a83d51bd330cbd3a42f2fef"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.13/wheretoken_darwin_amd64.tar.gz"
      sha256 "ae0d2ee036812f0e3e145142af29822943fce0446d496496141ff14023a8b384"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.13/wheretoken_linux_arm64.tar.gz"
      sha256 "ba50b8a8ef96cb6e396c9b8c9e2cba6d42eb44997a79abb4d883f2151fdc161e"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.13/wheretoken_linux_amd64.tar.gz"
      sha256 "bc6a1a12bdec191f9ac6390191a751cbad2f8e9df45fb11f18621b0ce68ae12f"
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
