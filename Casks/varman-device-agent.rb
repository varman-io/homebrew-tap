cask "varman-device-agent" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "18e0eee60090c1da1e76ea8df824f3bd0e9be46720165e550d4767fdf6dae762",
         intel: "6e47b02cf15bcba5403a5d52ccb5e4b8eb5ea037a98b5751e27bb9a3255fff73"

  url "https://github.com/varman-io/device-agent/releases/download/v#{version}/Varman-Device-Agent-#{version}-#{arch}.dmg"
  name "Varman Device Agent"
  desc "Endpoint compliance agent for Varman"
  homepage "https://varman.io/"

  app "Varman Device Agent.app"

  zap trash: [
    "~/Library/Application Support/Varman Device Agent",
    "~/Library/Preferences/io.varman.device-agent.plist",
  ]

  caveats <<~EOS
    Varman Device Agent is not notarized yet. On first launch, if macOS says it
    cannot verify the app, open System Settings > Privacy & Security and click
    Open Anyway.
  EOS
end
