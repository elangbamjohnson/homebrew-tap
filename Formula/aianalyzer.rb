class Aianalyzer < Formula
  desc "Swift architecture and maintainability analyzer with optional AI suggestions"
  homepage "https://github.com/elangbamjohnson/AIAnalyzer"
  url "https://github.com/elangbamjohnson/AIAnalyzer/releases/download/v0.2.0/aianalyzer-macos-arm64.zip"
  sha256 "27def3e5cd88d4d1bfc50de5e58f1f670b720cbb7a32ad57e98d035890cd7270"
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
