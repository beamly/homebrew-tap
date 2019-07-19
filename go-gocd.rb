# This file was generated by GoReleaser. DO NOT EDIT.
class GoGocd < Formula
  desc "CLI interface for ThoughtWorks GoCD"
  homepage "https://github.com/beamly/terraform-provider-gocd"
  version "0.7.10"

  if OS.mac?
    url "https://github.com/beamly/go-gocd/releases/download/0.7.10/gocd-0.7.10-darwin-x86_64.zip"
    sha256 "d4439dfa961f7d32beee487dedb1f8ac1b5b5070db67f91af2d919ebd6d16fdb"
  elsif OS.linux?
    url "https://github.com/beamly/go-gocd/releases/download/0.7.10/gocd-0.7.10-linux-x86_64.tar.gz"
    sha256 "1d6c3f989b806677c9749942f013a673098ad7d9346d7ff97ea5346ce92e24c1"
  end
  
  depends_on "drewsonne/homebrew-tap/tf-install-provider"

  def install
    bin.install "gocd"
  end

  test do
    system "#{bin}/gocd --version"
  end
end
