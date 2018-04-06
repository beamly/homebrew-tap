require "language/go"

class RepoSecurityScanner < Formula
  desc "CLI tool that finds secrets accidentally committed to a git repo, eg passwords, private keys"
  homepage "https://github.com/UKHomeOffice/repo-security-scanner"
  version "0.3.1"

  depends_on "cmake" => :build
  depends_on "go@1.9" => :build

  url "https://github.com/UKHomeOffice/repo-security-scanner.git",
    :revision => "13b8368c2df5b49dcbfa21c4a81986486ea5f7e4"

  head "https://github.com/UKHomeOffice/repo-security-scanner.git",
   :shallow => false

  def install
    ENV["GOPATH"] = buildpath
    ENV.prepend_create_path "PATH", buildpath/"bin"
    dir = buildpath/"src/github.com/UKHomeOffice/repo-security-scanner"
    dir.install buildpath.children - [buildpath/".brew_home"]
    
    cd dir do
      system "make", "deps"
      system "go", "get", "-v"
      system "make", "cli"
      bin.install "#{buildpath}/bin/scanrepo"
    end

  end

  test do
    system "scanrepo", "--help"
  end

  def caveats
    """
Usage:
    git log -p | scanrepo
"""
  end
end
