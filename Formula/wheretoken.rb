class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  version "0.6.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.6.4/wheretoken_darwin_arm64.tar.gz"
      sha256 "dce37e65d1d996d6249f01c2f6d535b17d9344cc3d44b1722c1276ef7e1e65a9"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.6.4/wheretoken_darwin_amd64.tar.gz"
      sha256 "ce031437356fed00f380f06405da9c417ca24195998934cae4b816460cdda09f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.6.4/wheretoken_linux_arm64.tar.gz"
      sha256 "df7894cd9fe0492d7e9c5dcfa91e76cdbe162d2485203183ed99a826c4c5d84f"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.6.4/wheretoken_linux_amd64.tar.gz"
      sha256 "1e5df4203fec4f6b8bebed59f78f7d741e181abce8081ac67a25554b58575d39"
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
