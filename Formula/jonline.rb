# This file is generated and pushed automatically by the Server CI/CD workflow
# (create_homebrew_release job) in https://github.com/jonlatane/jonline on every
# release to main. Don't hand-edit it -- changes will be overwritten.
class Jonline < Formula
  desc "Jonline federated social server"
  homepage "https://github.com/jonlatane/jonline"
  url "https://github.com/jonlatane/jonline/releases/download/v0.5.540-475850d/jonline-0.5.540-475850d-macos-arm64.tar.gz"
  sha256 "f5df8d652fa460acab6dce32f7a386d5aca7c4b879e94ec7e6a78d6b6c628a6b"
  version "0.5.540-475850d"
  license "AGPL-3.0-only"

  depends_on arch: :arm64
  depends_on "libpq"

  def install
    (etc/"jonline").install Dir["*"]
    (bin/"jonline").write <<~SCRIPT
      #!/bin/bash
      cd "#{etc}/jonline" && exec ./jonline "$@"
    SCRIPT
    chmod 0755, bin/"jonline"
  end

  test do
    system "#{bin}/jonline", "--version"
  end
end
