class TerraformProviderGocd < Formula
  desc "Terraform Provider for ThoughtWorks GoCD"
  homepage "https://github.com/beamly/terraform-provider-gocd"
  url "https://github.com/beamly/terraform-provider-gocd/releases/download/0.1.25/terraform-provider-gocd-0.1.25-darwin-amd64.zip"
  version "0.1.25"
  sha256 "42f71e89443a26ac46a6f07bcda4966c2f2312ef8f0b1033ab53c7977d1fc62d"
  
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
