class Gone < Formula
  desc "macOS uninstaller and system monitor TUI — hunt orphaned files and trash them safely"
  homepage "https://github.com/yasku/gone"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yasku/gone/releases/download/v1.0.0/gone-darwin-arm64"
      sha256 "e466899090586d83b6b26ed8a20d699d0b6277d3d3c5d7fbc60915c440db34ea"

      def install
        bin.install "gone-darwin-arm64" => "gone"
      end
    else
      url "https://github.com/yasku/gone/releases/download/v1.0.0/gone-darwin-amd64"
      sha256 "38ecc4c3513890ec696464e0820ac259fc73f152b738e142f068ffab0cc97808"

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
