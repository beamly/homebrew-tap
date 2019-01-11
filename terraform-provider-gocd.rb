class TerraformProviderGocd < Formula
  desc "Terraform Provider for ThoughtWorks GoCD"
  homepage "https://github.com/beamly/terraform-provider-gocd"
  url "https://github.com/beamly/terraform-provider-gocd/releases/download/0.2.0/terraform-provider-gocd-0.2.0-darwin-amd64.zip"
  version "0.2.0"
  sha256 "360097faeec4f31cd1dc6a1f7fb5e87d4ab4482676b06ac7b48ed12bb88819c1"
  
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
