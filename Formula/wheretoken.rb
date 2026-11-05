class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.12/wheretoken_darwin_arm64.tar.gz"
      sha256 "4782a36cff9a8d547497ac952383ad2fd51867b1d7de86d73d209b89e0a73a76"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.12/wheretoken_darwin_amd64.tar.gz"
      sha256 "39acee183698bade56d406cfe5b3a62542f4a6bb5fe74e0b09536b7ddb7a2764"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.12/wheretoken_linux_arm64.tar.gz"
      sha256 "8080ba10fa32e71264ce60826dabccc295e5ad041a87d9dcd5f2091d78356a53"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.12/wheretoken_linux_amd64.tar.gz"
      sha256 "086a58a409242573127ac5fef48d8c0153df7341839ad47e7582e1ee36f724f2"
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
