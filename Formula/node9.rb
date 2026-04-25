class Node9 < Formula
  desc "Sudo command for AI agents — execution security for Claude Code & MCP"
  homepage "https://github.com/node9-ai/node9-proxy"
  url "https://registry.npmjs.org/@node9/proxy/-/proxy-1.12.9.tgz"
  sha256 "fe5904bf5155593776d5bab164318e02834ccc382c98aacc9b4f91b45590edd8"
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
