cask "gitroster" do
  version "1.0"
  sha256 "6258ca95fc0fa12cba63644b8039754c03a98befba5f2883d5ac98210f1daa68"

  url "https://github.com/drsammokhtari/gitroster/releases/download/v#{version}/GitRoster-#{version}.zip"
  name "GitRoster"
  desc "See, commit, pull and push all your git repos in one light window"
  homepage "https://github.com/drsammokhtari/gitroster"

  depends_on macos: ">= :sonoma"

  app "GitRoster.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/GitRoster.app"]
  end
end
