class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.11/wheretoken_darwin_arm64.tar.gz"
      sha256 "2503b181d52914767313e30752642119c481e9ee6ed740cc51d650dbbd6045e8"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.11/wheretoken_darwin_amd64.tar.gz"
      sha256 "55d4163a9c9da4f67e6c491b7c6a901d3471b313d4e5d905ea1badeccc903ff0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.11/wheretoken_linux_arm64.tar.gz"
      sha256 "f8d47f873f9a9dc911a821d4b38ad39076a24d3b61a7bb310561d96a26e8b233"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.11/wheretoken_linux_amd64.tar.gz"
      sha256 "8e30c589e67e595506c8c39c2432d68cfcbae42ef20535ccff0be107259a6bda"
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
