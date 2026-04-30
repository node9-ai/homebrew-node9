class Node9 < Formula
  desc "Sudo command for AI agents — execution security for Claude Code & MCP"
  homepage "https://github.com/node9-ai/node9-proxy"
  url "https://registry.npmjs.org/@node9/proxy/-/proxy-1.16.0.tgz"
  sha256 "53eb92174048270315621f58691f6907609eb6e140d85bfd403710ee79444c55"
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
