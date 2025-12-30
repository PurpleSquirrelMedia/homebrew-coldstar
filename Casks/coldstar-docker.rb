cask "coldstar-docker" do
  version "1.0.0"
  sha256 :no_check

  url "https://raw.githubusercontent.com/PurpleSquirrelMedia/coldstar-distro-build-mc/v#{version}/scripts/coldstar-docker"
  name "ColdStar (Docker)"
  desc "CLI cold wallet system - Docker version (no dependencies)"
  homepage "https://github.com/PurpleSquirrelMedia/coldstar-distro-build-mc"

  depends_on cask: "docker"

  binary "coldstar-docker", target: "coldstar"

  caveats <<~EOS
    ColdStar (Docker version) has been installed!

    This version runs in a Docker container - no Python or Rust needed.
    Just ensure Docker Desktop is running.

    Usage:
      coldstar

    Note: First run will pull the Docker image (~500MB).
  EOS
end
