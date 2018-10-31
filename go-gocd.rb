class GoGocd < Formula
  desc "CLI interface for ThoughtWorks GoCD"
  homepage "https://github.com/beamly/terraform-provider-gocd"
  url "https://github.com/beamly/go-gocd/releases/download/0.7.2/gocd-0.7.2-darwin-x86_64.zip"
  version "0.7.2"
  sha256 "37058406371f88b3e463b35a1bee419902c46a62cde72096b11a1bf71f601376"
  
  depends_on "drewsonne/homebrew-tap/tf-install-provider"

  def install
    bin.install "gocd"
  end

  test do
    system "#{bin}/gocd --version"
  end
end
