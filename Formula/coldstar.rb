class Coldstar < Formula
  desc "CLI-first cold wallet system for RAM-only USB signing"
  homepage "https://github.com/PurpleSquirrelMedia/coldstar-distro-build-mc"
  url "https://github.com/PurpleSquirrelMedia/coldstar-distro-build-mc/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "34eb39860ff080b46838a6659be7533c05c928f44cf584396479e032ee29789c"
  license "MIT"

  depends_on "rust" => :build
  depends_on "python@3.11"

  def install
    # Build Rust secure_signer if it exists
    if (buildpath/"secure_signer").exist?
      cd "secure_signer" do
        system "cargo", "build", "--release"
      end
    end

    # Create virtualenv
    venv = libexec/"venv"
    python = Formula["python@3.11"].opt_bin/"python3.11"
    system python, "-m", "venv", venv

    # Install Python dependencies
    pip = venv/"bin/pip"
    system pip, "install", "--upgrade", "pip"
    system pip, "install", "-r", "local_requirements.txt"

    # Install application files
    libexec.install "main.py"
    libexec.install "src"
    libexec.install "config.py"
    libexec.install "flash_usb.py"
    libexec.install "upgrade_wallet.py"
    libexec.install "local_requirements.txt"
    libexec.install "python_signer_example.py"

    if (buildpath/"secure_signer").exist?
      libexec.install "secure_signer"
    end

    # Copy Rust binary if built
    if (buildpath/"secure_signer/target/release/solana-signer").exist?
      bin.install "secure_signer/target/release/solana-signer"
    end

    # Create wrapper script
    (bin/"coldstar").write <<~EOS
      #!/bin/bash
      export COLDSTAR_HOME="#{libexec}"
      cd "#{libexec}"
      exec "#{libexec}/venv/bin/python" "#{libexec}/main.py" "$@"
    EOS
  end

  def caveats
    <<~EOS
      ColdStar has been installed!

      To run ColdStar:
        coldstar

      Note: ColdStar requires USB drive access for cold wallet operations.
      On macOS, you may need to grant terminal/iTerm disk access permissions.
    EOS
  end

  test do
    system "#{bin}/coldstar", "--help" rescue nil
    assert_predicate bin/"coldstar", :exist?
  end
end
