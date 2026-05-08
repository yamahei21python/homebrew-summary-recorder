cask "summary-recorder" do
  version "1.0.0"
  sha256 "67d1c8ad2baec6c14ab7b684b9c373bf9eba399d8af576917d5e12f55eecc5a6"

  url "https://github.com/yamahei21python/SummaryRecorder/releases/download/v#{version}/SummaryRecorder.dmg",
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
