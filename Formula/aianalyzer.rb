class Aianalyzer < Formula
  desc "Swift architecture and maintainability analyzer with optional AI suggestions"
  homepage "https://github.com/elangbamjohnson/AIAnalyzer"
  url "https://github.com/elangbamjohnson/AIAnalyzer/releases/download/v0.2.0/aianalyzer-macos-arm64.zip"
  sha256 "b427e5e5926969a19f3a4175074416185c2703c55d3e3111390009efb17a94bd"
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
