Pod::Spec.new do |s|
    s.name     = 'Map4dServices'
    s.version  = '2.6.0'
    s.summary  = 'Map4D Services SDK for iOS'
    s.homepage = 'https://map4d.vn'

    s.author   = { 'IOTLink' => 'admin@iotlink.com.vn' }
    s.license  = {
        :type => "Copyright",
        :text => "Copyright (c) 2025 IOTLink"
    }

    s.platform = :ios, '12.0'
    s.source   = { :http => "https://github.com/map4d/map4d-services-ios-sdk/releases/download/#{s.version}/Map4dServices.xcframework.zip" }

    s.ios.vendored_frameworks = 'Map4dServices.xcframework'
end
