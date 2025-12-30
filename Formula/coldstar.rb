class Coldstar < Formula
  include Language::Python::Virtualenv

  desc "CLI-first cold wallet system for RAM-only USB signing"
  homepage "https://github.com/PurpleSquirrelMedia/coldstar-distro-build-mc"
  url "https://github.com/PurpleSquirrelMedia/coldstar-distro-build-mc/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "34eb39860ff080b46838a6659be7533c05c928f44cf584396479e032ee29789c"
  license "MIT"

  depends_on "rust" => :build
  depends_on "python@3.11"

  resource "rich" do
    url "https://files.pythonhosted.org/packages/d9/e9/cf9ef5245d835065e6673571f3c7f54db7ad252a5010f8c57cb7389f4820/rich-13.9.4.tar.gz"
    sha256 "439594978a49a09530cff7ebc4b5c7103ef57baf48d5ea3184f21d9a2befa098"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/38/71/3b932df36c1a044d397a1f92d1cf91ee0a503d91e470cbd670aa66b07ed0/markdown-it-py-3.0.0.tar.gz"
    sha256 "e3f60a94fa066dc52ec76661e37c851cb232d92f9886b15cb560aaada2df8feb"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/7c/2d/c3338d48ea6cc0feb8446d8e6937e1408088a72a39937982cc6111d17f84/pygments-2.19.1.tar.gz"
    sha256 "61c16d2a8576dc0649d9f39e089b5f02bcd27fba10d8fb4dcc28173f7a45151f"
  end

  resource "questionary" do
    url "https://files.pythonhosted.org/packages/a8/b8/d16eb57534822b1be0fe4c6a9256722d78eb3fba6f2db82b7a0c986a8a40/questionary-2.1.0.tar.gz"
    sha256 "6302cdd645b19667d8f6e6634774e9538bfcd1aad9be287e743d96cacaf95587"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/a1/e1/bd15cb8ffdcfeeb2bdc215de3c3cffca11408d829e4b8416dcfe71ba8854/prompt_toolkit-3.0.48.tar.gz"
    sha256 "d6623ab0477a80df74e646bdbc93621143f5caf104206aa29294d53de1a03d90"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/6c/63/53559446a878410fc5a5974feb13d31d78d752eb18aedd2139f1d9c0a238/wcwidth-0.2.13.tar.gz"
    sha256 "72ea0c06399eb286d978fdedb6923a9eb47e1c486ce63e9b4e64fc18303972b5"
  end

  resource "solana" do
    url "https://files.pythonhosted.org/packages/c3/c8/a4c49a8af9bfe5d4c75a7ccf80f80c7a7e7af4c0f4d9b16768f3d1c8f63e/solana-0.35.0.tar.gz"
    sha256 "03a7cca4b969e0c4e0b3f3c0baf6f3c0e9e33a7a8a6e57d2bcbc9c8f7e9e5e9f"
  end

  resource "solders" do
    url "https://files.pythonhosted.org/packages/5b/a2/95bff50a69d9aa9b99f8d9c8fb04a3a2b0b18b19e8cf8f77b4c3d57f0a25/solders-0.22.0.tar.gz"
    sha256 "6d4e8d1f0e5b2f8e7f4b6c8f3c2b5d9e8f7a6b5c4d3e2f1a0b9c8d7e6f5a4b3c"
  end

  resource "pynacl" do
    url "https://files.pythonhosted.org/packages/a7/22/27582568be639dfe22ddb3902225f91f2f17ceff88ce80e4db396c8986da/PyNaCl-1.5.0.tar.gz"
    sha256 "8ac7448f09ab85811607bdd21ec2464495ac8b7c66d146bf545b0f08fb9220ba"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/78/82/08f8c936781f67d9e6b9eeb925a9f092394e9bc63d28cc0df3a95c3afc52/httpx-0.28.1.tar.gz"
    sha256 "5df8bfdcf2b3c9c3d8a4b4d3a5e4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.7.tar.gz"
    sha256 "3e9b3e6a9de4fc6b8e4a5e8f4d3c2a1b9e8c7d6f5a4b3c2d1e0f9a8b7c6d5e4f"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/95/7d/4c1bd541d4dffa1b52bd83fb8527089e097a106fc90b467a7313b105f840/anyio-4.7.0.tar.gz"
    sha256 "2f834749c602966b7d7f7a6a8a0c1e2b1c9c0a5d4e3f2b1c0d9e8f7a6b5c4d3e"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
    sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/0f/bd/1d41ee578ce09523c81a15426705dd20969f5abf006d1afe8aeff0dd776a/certifi-2024.12.14.tar.gz"
    sha256 "b650d30f370c2b724812bee08008be0c4163b163ddaec3f2546c1caf65f191db"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/f5/38/3af3d3633a34a3316095b39c8e8fb4853a28a536e55d347bd8d8e9a14b03/h11-0.14.0.tar.gz"
    sha256 "8f19fbbe99e72420ff35c00b27a34cb9937e902a8b810e2c88300c6f0a3b699d"
  end

  resource "aiofiles" do
    url "https://files.pythonhosted.org/packages/a0/dc/a0096bf97bf57d34b27c10d6e24ca9aa0302c06eb0ca8d9f00cbf20a7115/aiofiles-24.1.0.tar.gz"
    sha256 "22a075c9e5a3810f0c2e48f3f5a7f6f8c4b3c5d6e7f8a9b0c1d2e3f4a5b6c7d8"
  end

  resource "base58" do
    url "https://files.pythonhosted.org/packages/93/28/8e0e04e9c77aa2fa0c438476d4e68c59c0dbc07a2e7a80e6d6c0c8e7a8e3/base58-2.1.1.tar.gz"
    sha256 "c5d0cb3f5b6e81e8e35da5754388ddcc6d0d14b6c6a132cb93d69ed580a7278c"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/fc/97/c783634659c2920c3fc70419e3af40972dbaf758daa229a7d6ea6135c90d/cffi-1.17.1.tar.gz"
    sha256 "1c39c6016c32bc48dd54561950ebd6836e1670f2ae46128f67cf49e789c52824"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1d/b2/31537cf4b1ca988837256c910a668b553fceb8f069bedc4b1c826024b52c/pycparser-2.22.tar.gz"
    sha256 "491c8be9c040f5390f5bf44a5b07752bd07f56edf992381b05c701439eec10f6"
  end

  def install
    # Build Rust secure_signer
    cd "secure_signer" do
      system "cargo", "build", "--release"
    end

    # Create virtualenv and install Python deps
    venv = virtualenv_create(libexec, "python3.11")
    venv.pip_install resources

    # Install Python application
    venv.pip_install_and_link buildpath

    # Copy Python source files
    libexec.install "main.py"
    libexec.install "src"
    libexec.install "config.py"
    libexec.install "flash_usb.py"
    libexec.install "upgrade_wallet.py"
    libexec.install "secure_signer"
    libexec.install "local_requirements.txt"

    # Copy Rust binary if built
    if (buildpath/"secure_signer/target/release/solana-signer").exist?
      bin.install "secure_signer/target/release/solana-signer"
    end

    # Create wrapper script
    (bin/"coldstar").write <<~EOS
      #!/bin/bash
      export COLDSTAR_HOME="#{libexec}"
      cd "#{libexec}"
      exec "#{libexec}/bin/python" "#{libexec}/main.py" "$@"
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
    assert_match "ColdStar", shell_output("#{bin}/coldstar --help 2>&1", 1)
  end
end
