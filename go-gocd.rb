class GoGocd < Formula
  desc "CLI interface for ThoughtWorks GoCD"
  homepage "https://github.com/beamly/terraform-provider-gocd"
  url "https://github.com/beamly/go-gocd/releases/download/0.7.0/gocd-0.7.0-darwin-x86_64.zip"
  version "0.7.0"
  sha256 "005ae1eeb5b7a6cdac5a96b770cbfdf7cb5e91d4b535fff50cb7e3077446502e"
  
  depends_on "drewsonne/homebrew-tap/tf-install-provider"

  def install
    bin.install "gocd"
  end

  test do
    system "#{bin}/gocd --version"
  end
end
