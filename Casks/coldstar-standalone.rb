cask "coldstar-standalone" do
  version "1.2.0"
  sha256 "12bafd41fc66bed805a037613333a73d4fb7c956a2c7b5de90aaa24c8980de82"

  url "https://github.com/PurpleSquirrelMedia/coldstar-distro-build-mc/releases/download/v#{version}/coldstar-#{version}-darwin-arm64.zip"
  name "ColdStar"
  desc "CLI cold wallet system for Solana - standalone executable"
  homepage "https://github.com/PurpleSquirrelMedia/coldstar-distro-build-mc"

  binary "coldstar-#{version}-darwin-arm64/coldstar"

  caveats <<~EOS
    ColdStar standalone executable has been installed!

    This is a fully self-contained binary - no Python, Rust, or
    package installation required.

    Usage:
      coldstar

    Security Features:
      - Rust secure memory (mlock)
      - Argon2id key derivation
      - AES-256-GCM encryption
      - Ed25519 signing
      - Auto-zeroization
  EOS
end
