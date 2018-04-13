class GoGocd < Formula
  desc "CLI interface for ThoughtWorks GoCD"
  homepage "https://github.com/beamly/terraform-provider-gocd"
  url "https://github.com/beamly/go-gocd/releases/download/0.6.16/gocd-0.6.16-darwin-x86_64.zip"
  version "0.6.16"
  sha256 "c9fe2e772e3ed08a9007c28abfcdd5615c4713bb8e9e6c296f7d55017e912720"
  
  depends_on "drewsonne/homebrew-tap/tf-install-provider"

  def install
    bin.install "gocd"
  end

  test do
    system "#{bin}/gocd --version"
  end
end
