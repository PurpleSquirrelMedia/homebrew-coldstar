# Homebrew Tap for ColdStar

This is the official Homebrew tap for [ColdStar](https://github.com/PurpleSquirrelMedia/coldstar-distro-build-mc) - a CLI-first cold wallet system that transforms USB drives into disposable, RAM-only signing mediums.

## Installation

```bash
brew tap PurpleSquirrelMedia/coldstar
brew install coldstar
```

Or install directly:

```bash
brew install PurpleSquirrelMedia/coldstar/coldstar
```

## Usage

After installation, run:

```bash
coldstar
```

## Requirements

- macOS or Linux
- USB drive for cold wallet operations

## What is ColdStar?

ColdStar is a security-focused cold wallet system for Solana that:

- Transforms any USB drive into a disposable signing medium
- Operates entirely in RAM for maximum security
- Uses Rust-based cryptographic signing with memory-locked encryption
- Provides a CLI interface for transaction signing

## License

MIT
