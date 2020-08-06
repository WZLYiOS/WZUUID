Pod::Spec.new do |s|

  s.name             = 'WZUUID'
  s.version          = '2.1.0'
  s.summary          = '唯一标示组件kit '

  s.description      = <<-DESC
    深圳我主良缘有限公司,iOS项目唯一标示组件.
                       DESC

  s.homepage         = 'https://github.com/WZLYiOS/WZUUID'
  s.license          = 'MIT'
  s.author           = { 'xiaobin liu'=> '327847390@qq.com' }
  s.source           = { :git => 'https://github.com/WZLYiOS/WZUUID.git', :tag => s.version.to_s }

  s.requires_arc = true
  s.static_framework = true
  s.swift_version         = '5.0'
  s.ios.deployment_target = '8.0'
  s.default_subspec = 'Source'

  s.subspec 'Source' do |ss|
    ss.source_files = 'WZUUID/Classes/*.swift'
    ss.dependency "KeychainAccess", "~> 3.2.0"
  end


  s.subspec 'Binary' do |ss|
    ss.vendored_frameworks = "Carthage/Build/iOS/Static/WZUUID.framework"
    ss.dependency "KeychainAccess", "~> 3.2.0"
    ss.user_target_xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(TOOLCHAIN_DIR)/usr/lib/swift/$(PLATFORM_NAME)' }
  end
end
