class GoGocd < Formula
  desc "CLI interface for ThoughtWorks GoCD"
  homepage "https://github.com/beamly/terraform-provider-gocd"
  url "https://github.com/beamly/go-gocd/releases/download/0.7.4/gocd-0.7.4-darwin-x86_64.zip"
  version "0.7.4"
  sha256 "221f021a2673e0884af415c675c50786d68aef63174e98db7397860a6e1709a7"
  
  depends_on "drewsonne/homebrew-tap/tf-install-provider"

  def install
    bin.install "gocd"
  end

  test do
    system "#{bin}/gocd --version"
  end
end
