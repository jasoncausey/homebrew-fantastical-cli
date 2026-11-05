class FantasticalCli < Formula
  include Language::Python::Virtualenv

  desc "Command-line interface for adding events to Fantastical using natural language"
  homepage "https://github.com/jasoncausey/fantastical-cli"
  url "https://github.com/jasoncausey/fantastical-cli/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "7f7cc4abf7a21330c1315ded1fa877d4f9f0545a84b96e619e05e2dee8cb7030"
  license "MIT"

  depends_on :macos
  depends_on "python@3.15"

  def install
    virtualenv_install_with_resources
  end

  test do
    # Test that the command is available and shows help
    assert_match "Add events to Fantastical using natural language input",
                 shell_output("#{bin}/fantastical-cli --help")

    # Test that the command handles missing arguments gracefully
    assert_match "usage:", shell_output(bin/"fantastical-cli", 1)
  end
end
