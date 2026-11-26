cask "lightgitview" do
  version "1.3.1"
  sha256 "3d821937e48cbffea9fe209f7a7fec38c1c44dcea2468970fdb64601c02a4117"

  url "https://github.com/drsammokhtari/lightgitview/releases/download/v#{version}/LightGitView-#{version}.zip"
  name "LightGitView"
  desc "See, commit, pull and push all your git repos in one light window"
  homepage "https://github.com/drsammokhtari/lightgitview"

  depends_on macos: ">= :sonoma"

  app "LightGitView.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/LightGitView.app"]
  end
end
