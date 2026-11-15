class Node9 < Formula
  desc "IAM for your AI agents: decide what each one may do, and keep the record"
  homepage "https://github.com/node9-ai/node9-proxy"
  url "https://registry.npmjs.org/@node9/proxy/-/proxy-2.62.0.tgz"
  sha256 "f12566684bb1cf4422e177ea4108bb4b2b03288622cd0a606bc8519b467a8cc6"
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
