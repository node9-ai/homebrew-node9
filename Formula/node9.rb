class Node9 < Formula
  desc "The Sudo Command for AI Agents — execution security for Claude Code & MCP"
  homepage "https://github.com/node9-ai/node9-proxy"
  url "https://registry.npmjs.org/@node9/proxy/-/@node9/proxy-1.0.11.tgz"
  sha256 "da7553b7257df4a4df62e98713b4b836d107d53e976f93126f7a4b760ecfe9bb"
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
