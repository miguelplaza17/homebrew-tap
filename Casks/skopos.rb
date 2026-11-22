# Homebrew cask for the tap repository github.com/miguelplaza17/homebrew-tap (Casks/skopos.rb).
# After each release: set version and sha256 (tools/release.sh prints it). The app is
# the Tauri build (universal), which updates itself.
#   brew install --cask miguelplaza17/tap/skopos
cask "skopos" do
  version "1.6.0"
  sha256 "8c73bc33043e5cea6f51374e30f6771601c120b3ed71193706c3e85bb3843020"

  url "https://github.com/miguelplaza17/Skopos/releases/download/v#{version}/Skopos-#{version}.dmg"
  name "Skopos"
  desc "Fast, minimal database client for Postgres, MySQL, SQLite, Redis and MongoDB"
  homepage "https://github.com/miguelplaza17/Skopos"

  depends_on macos: ">= :ventura"

  auto_updates true

  app "Skopos.app"

  zap trash: [
    "~/Library/Application Support/app.dblens.dbLens",
    "~/Library/Application Support/dbLens",
    "~/Library/Caches/io.github.miguelplaza17.dblens",
    "~/Library/WebKit/io.github.miguelplaza17.dblens",
    "~/Library/Preferences/io.github.miguelplaza17.dblens.plist",
  ]
end
