# This file is generated and pushed automatically by the Server CI/CD workflow
# (create_homebrew_release job) in https://github.com/jonlatane/jonline on every
# release to main. Don't hand-edit it -- changes will be overwritten.
class Jonline < Formula
  desc "Jonline federated social server"
  homepage "https://github.com/jonlatane/jonline"
  url "https://github.com/jonlatane/jonline/releases/download/vPLACEHOLDER/jonline-PLACEHOLDER-macos-arm64.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  version "PLACEHOLDER"
  license "AGPL-3.0-only"

  depends_on arch: :arm64
  depends_on "libpq"

  def install
    (etc/"jonline").install Dir["*"]
    (bin/"jonline").write <<~EOS
      #!/bin/bash
      cd "#{etc}/jonline" && exec ./jonline "$@"
    EOS
    chmod 0755, bin/"jonline"
  end

  test do
    system "#{bin}/jonline", "--version"
  end
end
