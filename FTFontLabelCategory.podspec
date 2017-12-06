#
# Be sure to run `pod lib lint FTFontLabelCategory.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FTFontLabelCategory'
  s.version          = '0.0.1'
  s.summary          = 'UILabel Category adjust the Font automatically to fit the size'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
												UILabel adjust the Font automatically to fit the size
												UILabel的扩展，根据设置的大小（size）调整Font的大小，顺便封装了增加行间距的方法。
                       DESC

  s.homepage         = 'https://github.com/johnsongs/FTFontLabelCategory'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'johnsongs' => '936642419@qq.com' }
  s.source           = { :git => 'https://github.com/johnsongs/FTFontLabelCategory.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'FTFontLabelCategory/Classes/**/*'
  
  # s.resource_bundles = {
  #   'FTFontLabelCategory' => ['FTFontLabelCategory/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
