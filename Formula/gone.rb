class Gone < Formula
  desc "macOS uninstaller and system monitor TUI — hunt orphaned files and trash them safely"
  homepage "https://github.com/yasku/gone"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yasku/gone/releases/download/v1.1.0/gone-darwin-arm64"
      sha256 "e331a987fa52652784b2ff96514eb0c10a5094291f300a6b80c5156a2032bacf"

      def install
        bin.install "gone-darwin-arm64" => "gone"
      end
    else
      url "https://github.com/yasku/gone/releases/download/v1.1.0/gone-darwin-amd64"
      sha256 "3ea772f210377dfd695c58f989a4b68af568e27266eb13abfdc2835fc3609c93"

      def install
        bin.install "gone-darwin-amd64" => "gone"
      end
    end
  end

  test do
    assert_predicate bin/"gone", :exist?
    assert_predicate bin/"gone", :executable?
  end
end
