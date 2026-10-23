cask "aervane" do
  version "0.3.0"
  sha256 "3b6f6b21e31ea37a1d7b140dd2558cd403f77a5897ea8b6b8411ef7ac3705018"

  url "https://github.com/kirniy/aervane/releases/download/v#{version}/Aervane-#{version}-macos-arm64.zip"
  name "Aervane"
  desc "Menu bar temperature and fan control"
  homepage "https://github.com/kirniy/aervane"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Aervane.app"

  uninstall quit:   "dev.kirniy.aervane",
            script: {
              executable: "#{appdir}/Aervane.app/Contents/MacOS/Aervane",
              args:       ["--unregister-helper"],
            }

  zap trash: [
    "~/Library/Application Support/Aervane",
    "~/Library/Preferences/dev.kirniy.aervane.plist",
  ]
end
