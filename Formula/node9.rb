class Node9 < Formula
  desc "IAM for your AI agents: decide what each one may do, and keep the record"
  homepage "https://github.com/node9-ai/node9-proxy"
  url "https://registry.npmjs.org/@node9/proxy/-/proxy-2.19.1.tgz"
  sha256 "6f9f140fd742de3574bf3954800bcc73e3ba0ab6115ec755af879d4d1917e39d"
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
