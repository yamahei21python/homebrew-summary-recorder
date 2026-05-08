cask "summary-recorder" do
  version "1.0.0"
  sha256 "dabf24ddd2537787cdfcc68be75e8bfb089181b96949eb5faa6b2b6bf67f4b59"

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
