cask "lightgitview" do
  version "1.1"
  sha256 "8fbe8fdcf89c2d295f692096fd1821ff21e4ed1d7b90fb33cdd760c9e2cb6ae0"

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
