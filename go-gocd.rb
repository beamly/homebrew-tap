class GoGocd < Formula
  desc "CLI interface for ThoughtWorks GoCD"
  homepage "https://github.com/beamly/terraform-provider-gocd"
  url "https://github.com/beamly/go-gocd/releases/download/0.6.16/gocd-0.6.16-darwin-x86_64.zip"
  version "0.6.16"
  sha256 "291d65170e756b26b932e87a0f7c95ac10c6a22d4a49d1c8714f50efc17a6d29"
  
  depends_on "drewsonne/homebrew-tap/tf-install-provider"

  def install
    bin.install "gocd"
  end

  test do
    system "#{bin}/gocd --version"
  end
end
