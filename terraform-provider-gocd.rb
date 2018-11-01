class TerraformProviderGocd < Formula
  desc "Terraform Provider for ThoughtWorks GoCD"
  homepage "https://github.com/beamly/terraform-provider-gocd"
  url "https://github.com/beamly/terraform-provider-gocd/releases/download/0.1.24/terraform-provider-gocd-0.1.24-darwin-amd64.zip"
  version "0.1.24"
  sha256 "c2b8cd426c2ba2cbe445d7042c4cc1f5c970014833419b096c879f92b32bc8f0"
  
  depends_on "terraform"
  depends_on "drewsonne/homebrew-tap/tf-install-provider"

  def install
    bin.install "terraform-provider-gocd"
  end

  def caveats; <<~EOS
    After installing, you will need to copy the provider to a place terraform can find it by running:
      tf-install-provider artifactory
  EOS
  end

  test do
    system "#{bin}/terraform-provider-gocd; [[ $? -eq 1 ]]"
  end
end
