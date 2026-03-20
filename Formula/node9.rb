class Node9 < Formula
  desc "The Sudo Command for AI Agents — execution security for Claude Code & MCP"
  homepage "https://github.com/node9-ai/node9-proxy"
  url "https://registry.npmjs.org/@node9/proxy/-/@node9/proxy-1.0.9.tgz"
  sha256 "184df78cae4076159d3ab973c9b61a4c06c22c31d16a02f2c036f24ae7543c38"
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
