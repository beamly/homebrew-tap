class TerraformProviderGocd < Formula
  desc "Terraform Provider for ThoughtWorks GoCD"
  homepage "https://github.com/beamly/terraform-provider-gocd"
  url "https://github.com/beamly/terraform-provider-gocd/releases/download/1.0.0/terraform-provider-gocd-1.0.0-darwin-amd64.zip"
  version "1.0.0"
  sha256 "1bd8d28b66bddb59bd38d57b15e6f6368411ac6ff7437c77c6f4b926e996a8aa"
  
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
