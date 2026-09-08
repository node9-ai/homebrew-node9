class Node9 < Formula
  desc "Sudo command for AI agents — execution security for Claude Code & MCP"
  homepage "https://github.com/node9-ai/node9-proxy"
  url "https://registry.npmjs.org/@node9/proxy/-/proxy-2.9.1.tgz"
  sha256 "1d7229defcea49fbe52b4a5602c010ba915bef7b5c4059ac0bb3a79470a62d07"
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
