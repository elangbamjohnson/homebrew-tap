class Aianalyzer < Formula
  desc "Swift architecture and maintainability analyzer with optional AI suggestions"
  homepage "https://github.com/elangbamjohnson/AIAnalyzer"
  url "https://github.com/elangbamjohnson/AIAnalyzer/releases/download/v0.1.1/aianalyzer-macos-arm64.zip"
  sha256 "9ffc980a6d3e27a61cc833d1d85512ed519fd5c990ae14c91344aae77900db69"
  def install
    bin.install "aianalyzer"
  end

  test do
    (testpath/"Sample.swift").write <<~SWIFT
      final class Sample {
        func run() {}
      }
    SWIFT

    system "#{bin}/aianalyzer", testpath/"Sample.swift", "--format", "sarif"
  end
end
