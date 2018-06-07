#
# Be sure to run `pod lib lint MTFramework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MTFramework'
  s.version          = '0.1.7'
  s.summary          = 'MTFramwork is a set of coding tools and coding style.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
MTFramwork is a set of coding tools and coding style.
                       DESC

  s.homepage         = 'https://github.com/Secrimart/MTFramework'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Secrimart' => 'secrimart@aliyun.com' }
  s.source           = { :git => 'https://github.com/Secrimart/MTFramework.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MTFramework/Classes/MTFramework.h'
  s.public_header_files = 'MTFramework/Classes/MTFramework.h'
  
  s.subspec 'Category' do |ss|
      ss.subspec 'Hook' do |sss|
          sss.source_files = 'MTFramework/Classes/Category/Hook/*.*'
          sss.public_header_files = 'MTFramework/Classes/Category/Hook/*.h'
          sss.dependency 'JRSwizzle', '~> 1.0.0'
          
      end
      
      ss.subspec 'SafeAccess' do |sss|
          sss.source_files = 'MTFramework/Classes/Category/SafeAccess/*.*'
          sss.public_header_files = 'MTFramework/Classes/Category/SafeAccess/*.h'
      end
      
      ss.subspec 'Tools' do |sss|
          sss.source_files = 'MTFramework/Classes/Category/Tools/*.*'
          sss.public_header_files = 'MTFramework/Classes/Category/Tools/*.h'
          sss.dependency 'JRSwizzle', '~> 1.0.0'
      end
  end
  
  s.subspec 'CoreData' do |ss|
      ss.source_files = 'MTFramework/Classes/CoreData/*.*'
      ss.public_header_files = 'MTFramework/Classes/CoreData/*.h'
      ss.dependency 'JRSwizzle', '~> 1.0.0'
      ss.dependency 'MTFramework/Category/Hook', '~> 0.1'
  end
  
  s.subspec 'JSONKit' do |ss|
      ss.source_files = 'MTFramework/Classes/JSONKit/*.*'
      ss.public_header_files = 'MTFramework/Classes/JSONKit/*.h'
  end
end
