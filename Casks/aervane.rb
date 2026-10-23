cask "aervane" do
  version "0.5.0"
  sha256 "ac6f3d37ac4c49fa3a2012e517ee7e85d48ca7104d37cfe3a83309f9efd85ebb"

  url "https://github.com/kirniy/aervane/releases/download/v#{version}/Aervane-#{version}-macos-universal.zip"
  name "Aervane"
  desc "Menu bar temperature and fan control"
  homepage "https://github.com/kirniy/aervane"

  depends_on macos: :ventura

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
