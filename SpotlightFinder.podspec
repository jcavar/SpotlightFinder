Pod::Spec.new do |s|

  s.name         = "SpotlightFinder"
  s.version      = "0.0.2"
  s.summary      = "SpotlightFinder is Spotlight plugin which adds show in Finder option"


  s.homepage     = "https://github.com/jcavar/SpotlightFinder"
  s.screenshots  = "https://raw.githubusercontent.com/jcavar/SpotlightFinder/master/preview.gif"

  s.license      = "MIT"

  s.author             = { "Josip Cavar" => "josipcavar04@gmail.com" }
  s.social_media_url   = "http://twitter.com/josip04"

  s.platform     = :osx, "10.10"

  s.source       = { :git => "https://github.com/jcavar/SpotlightFinder.git", :tag => "0.0.2" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any h, m, mm, c & cpp files. For header
  #  files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = "SpotlightFinder"

  s.resource  = "SpotlightFinder/Info.plist"

end
