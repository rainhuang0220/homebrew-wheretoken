class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  version "0.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.6.3/wheretoken_darwin_arm64.tar.gz"
      sha256 "bcf6be781ca639bac53912d294a66089146fa4177edaf8dfdf9a4975d66363db"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.6.3/wheretoken_darwin_amd64.tar.gz"
      sha256 "616e8cea36d5d78f19c9687077193a66216cc8595a3ce699e89269e831df5aa3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.6.3/wheretoken_linux_arm64.tar.gz"
      sha256 "03d591d4123f292db16983027ed27b7e102385f8903f16fd1596dd3792fa845d"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.6.3/wheretoken_linux_amd64.tar.gz"
      sha256 "54304e92bc91965240d47b90b66a0c5434b23e219114e4570871ab54a1b3408b"
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
