class Node9 < Formula
  desc "Sudo command for AI agents — execution security for Claude Code & MCP"
  homepage "https://github.com/node9-ai/node9-proxy"
  url "https://registry.npmjs.org/@node9/proxy/-/proxy-1.67.3.tgz"
  sha256 "c4bebe82941f3185908d725ca12d8fe43e6581c6c68d40165de91a67300e466b"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/node9 --version")
  end
end
