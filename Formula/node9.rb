class Node9 < Formula
  desc "Sudo command for AI agents — execution security for Claude Code & MCP"
  homepage "https://github.com/node9-ai/node9-proxy"
  url "https://registry.npmjs.org/@node9/proxy/-/proxy-1.5.5.tgz"
  sha256 "60ff5ddb8441653fbbf7af057792a05accab4c7a571df8b422ab79ce2a0a7b5c"
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
