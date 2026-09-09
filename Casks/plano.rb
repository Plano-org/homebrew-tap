# The Homebrew cask (0040 R6), filled in by the release job with the
# version and the DMG's SHA-256, then pushed to plano-org/homebrew-tap as
# Casks/plano.rb. Install with:
#
#   brew install --cask plano-org/tap/plano
#
# `brew upgrade` moves to the next release, since every release rewrites
# this file with its own version and checksum.
cask "plano" do
  version "0.1.5"
  sha256 "ade6f1ee7f0dfc5108642cdbd1a4a10f490301ea5a9b43b39a2947c9b45172a6"

  url "https://github.com/plano-org/releases/releases/download/v#{version}/Plano-#{version}.dmg"
  name "Plano"
  desc "Planning tool where agents collaborate on a living draft, not a chat"
  homepage "https://plano.sh"

  # The bundle is built for macOS 13 and later (0039 D1).
  depends_on macos: :ventura

  app "Plano.app"

  # The app home (0008 D1); a project's own .plano folder is the
  # project's, not the app's, and stays.
  zap trash: [
    "~/Library/Application Support/Plano",
  ]
end
