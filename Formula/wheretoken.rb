class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.18/wheretoken_darwin_arm64.tar.gz"
      sha256 "43aba0f2e2a592491eb29905c440329c1ba441c591acc94743d1ae4ed3a285ca"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.18/wheretoken_darwin_amd64.tar.gz"
      sha256 "d5fa0adb8671cf8b68cf0e6a192002ffbf2e8fce1215fa4258e4c3a8786dce28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.18/wheretoken_linux_arm64.tar.gz"
      sha256 "e2874299ce1eb04f960b662cda514616e49d4811025137c927787b4872d63071"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.18/wheretoken_linux_amd64.tar.gz"
      sha256 "d176c4a9684c9cf2a562d142902b68e8737bc8b298b04700adb92feb952925f1"
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
