# Homebrew Tap for ColdStar

This is the official Homebrew tap for [ColdStar](https://github.com/PurpleSquirrelMedia/coldstar-distro-build-mc) - a CLI-first cold wallet system that transforms USB drives into disposable, RAM-only signing mediums.

## Installation Options

### Option 1: Standalone Executable (Recommended)

No dependencies required - just download and run:

```bash
brew tap PurpleSquirrelMedia/coldstar
brew install --cask coldstar-standalone
```

### Option 2: From Source (requires Python & Rust)

```bash
brew tap PurpleSquirrelMedia/coldstar
brew install coldstar
```

### Option 3: Docker Version

```bash
brew tap PurpleSquirrelMedia/coldstar
brew install --cask coldstar-docker
```

## Usage

After installation, run:

```bash
coldstar
```

## What's Included

| Package | Description | Dependencies |
|---------|-------------|--------------|
| `coldstar-standalone` | 21MB self-contained binary | None |
| `coldstar` | Build from source | Python 3.12, Rust |
| `coldstar-docker` | Docker container version | Docker |

## Security Features

- Rust secure memory (mlock)
- Argon2id key derivation (64MB, 3 iterations)
- AES-256-GCM encryption
- Ed25519 signing
- Auto-zeroization after use
- Private keys never in Python memory

## Requirements

- macOS (Apple Silicon or Intel)
- USB drive for cold wallet operations

## What is ColdStar?

ColdStar is a security-focused cold wallet system for Solana that:

- Transforms any USB drive into a disposable signing medium
- Operates entirely in RAM for maximum security
- Uses Rust-based cryptographic signing with memory-locked encryption
- Provides a CLI interface for transaction signing

## License

MIT
