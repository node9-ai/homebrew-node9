class Node9 < Formula
  desc "IAM for your AI agents: decide what each one may do, and keep the record"
  homepage "https://github.com/node9-ai/node9-proxy"
  url "https://registry.npmjs.org/@node9/proxy/-/proxy-2.47.2.tgz"
  sha256 "a12637850bc906f330409698826050ad92bb2033b6c791bb5cbf73d5022b37e1"
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
