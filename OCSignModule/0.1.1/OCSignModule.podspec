#
# Be sure to run `pod lib lint OCSignModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OCSignModule'
  s.version          = '0.1.1'
  s.summary          = 'A short description of OCSignModule.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/ModulizationSwift/OCSignModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wangchengqvan@gmail.com' => 'chengquan.wang@ele.me' }
  s.source           = { :git => 'https://github.com/ModulizationSwift/OCSignModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  # s.source_files = 'OCSignModule/Classes/**/*'

   $lib = ENV['use_lib']
   $lib_name = ENV["#{s.name}_use_lib"]
   if $lib || $lib_name
      puts '---------binary-------'
      s.source_files = "#{s.name}/Classes/**/*"
      s.public_header_files = "#{s.name}/Classes/**/*.h"
      s.ios.vendored_framework = "Framework/#{s.version}/#{s.name}.framework"
     #  这种是帮你打包成bundle
     #  s.resource_bundles = {
     #    "#{s.name}" => ["#{s.name}/Assets/*.{png,xib,plist}"]
     #  }
     #  这种是你已经打包好了bundle，推荐这种，可以省去每次pod帮你生成bundle的时间
      s.resources = "#{s.name}/Assets/*.bundle"
   else
      puts '.......source........'
      s.source_files = "#{s.name}/Classes/**/*"
     #  s.resources = "#{s.name}/Assets/*.bundle"
      s.public_header_files = "#{s.name}/Classes/**/*.h"
   end


   s.preserve_paths = "#{s.name}/Classes/**/*","#{s.name}/Assets/*.{png,xib,plist}","Framework/#{s.version}/#{s.name}.framework"

  # s.resource_bundles = {
  #   'OCSignModule' => ['OCSignModule/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
