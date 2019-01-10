class GoGocd < Formula
  desc "CLI interface for ThoughtWorks GoCD"
  homepage "https://github.com/beamly/terraform-provider-gocd"
  url "https://github.com/beamly/go-gocd/releases/download/0.7.3/gocd-0.7.3-darwin-x86_64.zip"
  version "0.7.3"
  sha256 "fcd665b693491c3e1d7d7ad8b1bde9757ab1b4673a9319142e80f6e2edbaa4d8"
  
  depends_on "drewsonne/homebrew-tap/tf-install-provider"

  def install
    bin.install "gocd"
  end

  test do
    system "#{bin}/gocd --version"
  end
end
