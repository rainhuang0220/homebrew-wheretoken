class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.6.2/wheretoken_darwin_arm64.tar.gz"
      sha256 "5618e6804639b6041a9ffb41c96bb9fd4f1fb1b0ba4bf93716f8d8ae7d08219a"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.6.2/wheretoken_darwin_amd64.tar.gz"
      sha256 "aa440af5d82dcb0a3d1595c483c81687844f84ad78dd71fd274b3fa1ccf95023"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.6.2/wheretoken_linux_arm64.tar.gz"
      sha256 "5183094dee3ac1d76b6d95bf4c448c83251e116681cdea48632dc19de507917f"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.6.2/wheretoken_linux_amd64.tar.gz"
      sha256 "e8604652cb0ac6f008f890633248b74be526726d9a087dd5fe35611c8f21cee1"
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
