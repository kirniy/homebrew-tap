cask "aervane" do
  version "0.4.0"
  sha256 "8489498d6c7f8f666718d09f663244296b769413d2cad2de7c38dd52c8f2af36"

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
