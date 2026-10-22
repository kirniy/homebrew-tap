cask "aervane" do
  version "0.2.0"
  sha256 "34c6a12cb9ae9255eb37cd5a4e827b11e1251526dd6165b96ff70f6126263991"

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
