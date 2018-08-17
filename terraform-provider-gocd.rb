class TerraformProviderGocd < Formula
  desc "Terraform Provider for ThoughtWorks GoCD"
  homepage "https://github.com/beamly/terraform-provider-gocd"
  url "https://github.com/beamly/terraform-provider-gocd/releases/download/0.1.23/terraform-provider-gocd-0.1.23-darwin-amd64.zip"
  version "0.1.23"
  sha256 "aa59c485da7776e816c539459c62c03081db733d1e71b67fc074645a527777fb"
  
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
