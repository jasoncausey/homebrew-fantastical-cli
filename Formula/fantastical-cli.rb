class FantasticalCli < Formula
  include Language::Python::Virtualenv
  
  desc "Command-line interface for adding events to Fantastical using natural language"
  homepage "https://github.com/jasoncausey/fantastical-cli"
  url "https://github.com/jasoncausey/fantastical-cli/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "28d64f8e4fac666fc8c8afd92ad0598bec156ecbb25349b81d4fc5267017e660"
  license "MIT"

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    # Test that the command is available and shows help
    assert_match "Add events to Fantastical using natural language input", shell_output("#{bin}/fantastical-cli --help")
    
    # Test that the command handles missing arguments gracefully
    assert_match "usage:", shell_output("#{bin}/fantastical-cli", 1)
    
    # Test version information is accessible
    system bin/"fantastical-cli", "--help"
  end
end
