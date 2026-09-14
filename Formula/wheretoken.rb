class Wheretoken < Formula
  desc "Local coding-agent token usage as a character table"
  homepage "https://github.com/rainhuang0220/whereToken"
  version "0.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.3/wheretoken_darwin_arm64.tar.gz"
      sha256 "fd4966831b8d6ee72d912934f15047cb7a47e3733832b7896f32b5ead9598e55"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.3/wheretoken_darwin_amd64.tar.gz"
      sha256 "d6ce18bc2caf1947d45f84a533fa66bf28bfa9479c6e13817cd1093a2ce97069"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.3/wheretoken_linux_arm64.tar.gz"
      sha256 "64710f574cafd55a1e3a88276f1f0317a99887f09f1ded47e07d4f7f93384355"
    end
    on_intel do
      url "https://github.com/rainhuang0220/whereToken/releases/download/v0.7.3/wheretoken_linux_amd64.tar.gz"
      sha256 "75f14f501b542030a112b85f15af153701bac8a2dc05bc34a7c451c827ea29bd"
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
