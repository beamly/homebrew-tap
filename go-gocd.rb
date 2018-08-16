class GoGocd < Formula
  desc "CLI interface for ThoughtWorks GoCD"
  homepage "https://github.com/beamly/terraform-provider-gocd"
  url "https://github.com/beamly/go-gocd/releases/download/0.7.1/gocd-0.7.1-darwin-x86_64.zip"
  version "0.7.1"
  sha256 "e68b11d0724f392b3f46a6f3b1b01396bb2737848097dac9d350af3310a82e53"
  
  depends_on "drewsonne/homebrew-tap/tf-install-provider"

  def install
    bin.install "gocd"
  end

  test do
    system "#{bin}/gocd --version"
  end
end
