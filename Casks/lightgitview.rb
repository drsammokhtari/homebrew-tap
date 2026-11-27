cask "lightgitview" do
  version "1.4.0"
  sha256 "ef2d6f4debab759854d89961fe2c68e5fb9c2be03e54dbeb37fc5194c7ee045a"

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
