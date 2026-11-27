cask "lightgitview" do
  version "1.4.1"
  sha256 "651b004da18ae111161acabb9786f47743b82c134c38550b62f288fbe8392440"

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
