cask "summary-recorder" do
  version "1.0.0"
  sha256 "9dd823e75b9821444dd6e112b1f6eeffc1225e6b0acef4f86927a180d4fd6c8c"

  url "https://github.com/yamahei21python/SummaryRecorder/releases/download/v#{version}/SummaryRecorder-#{version}.dmg",
      verified: "github.com/yamahei21python/SummaryRecorder/"
  name "SummaryRecorder"
  desc "AI meeting summary with local LLM + whisper"
  homepage "https://github.com/yamahei21python/SummaryRecorder"

  depends_on macos: ">= :sonoma"

  app "SummaryRecorder.app"

  zap trash: [
    "~/Library/Application Support/com.example.SummaryRecorder",
    "~/Library/Preferences/com.example.SummaryRecorder.plist",
    "~/Library/Caches/com.example.SummaryRecorder",
  ]
end
