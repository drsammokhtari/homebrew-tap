cask "lightgitview" do
  version "1.0"
  sha256 "cc4a76568e298d1140af7f307d904024eb27577ff8647dcbbae1d3665a187e21"

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
