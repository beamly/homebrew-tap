class TerraformProviderGocd < Formula
  desc "Terraform Provider for ThoughtWorks GoCD"
  homepage "https://github.com/beamly/terraform-provider-gocd"
  url "https://github.com/beamly/terraform-provider-gocd/releases/download/0.1.20/terraform-provider-gocd-0.1.20-darwin-amd64.zip"
  version "0.1.20"
  sha256 "7ca4d9a1b882b7f642eece99bdd13478c12af10854d2b0049e2c5f77167f5680"
  
  depends_on "terraform"
  depends_on "drewsonne/homebrew-tap/tf-install-provider"

  def install
    bin.install "terraform-provider-gocd"
  end

  def caveats
    "After installing, you will need to copy the provider to a place terraform can find it by running:
  tf-install-provider artifactory
"
  end

  test do
    system "#{bin}/terraform-provider-gocd; [[ $? -eq 1 ]]"
  end
end
