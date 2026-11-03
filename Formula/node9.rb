class Node9 < Formula
  desc "IAM for your AI agents: decide what each one may do, and keep the record"
  homepage "https://github.com/node9-ai/node9-proxy"
  url "https://registry.npmjs.org/@node9/proxy/-/proxy-2.49.0.tgz"
  sha256 "126e2f33083b85efd4b01f8b723fbc9f4817e4054d5154dfc081cfad27a06e5e"
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
