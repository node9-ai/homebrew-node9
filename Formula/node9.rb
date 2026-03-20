class Node9 < Formula
  desc "The Sudo Command for AI Agents — execution security for Claude Code & MCP"
  homepage "https://github.com/node9-ai/node9-proxy"
  url "https://registry.npmjs.org/@node9/proxy/-/@node9/proxy-1.0.12.tgz"
  sha256 "5d4aa388b28a67ef04efdfb299cd29d3205e2948d3e2cf1a475b9177b90cccda"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/node9 --version")
  end
end
