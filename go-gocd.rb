class GoGocd < Formula
  desc "CLI interface for ThoughtWorks GoCD"
  homepage "https://github.com/beamly/terraform-provider-gocd"
  url "https://github.com/beamly/go-gocd/releases/download/0.7.5/gocd-0.7.5-darwin-x86_64.zip"
  version "0.7.5"
  sha256 "4c5ef1f76b8ed5a454f9619014a4e37e07f44a4b1cba87e7853bdabd7ffd166b"
  
  depends_on "drewsonne/homebrew-tap/tf-install-provider"

  def install
    bin.install "gocd"
  end

  test do
    system "#{bin}/gocd --version"
  end
end
