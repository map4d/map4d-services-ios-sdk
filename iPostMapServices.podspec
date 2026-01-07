Pod::Spec.new do |s|
    s.name     = 'iPostMapServices'
    s.version  = '1.0.0'
    s.summary  = 'iPostMap Services SDK for iOS'
    s.homepage = 'https://ipostmap.vn'

    s.author   = { 'Vietnam Post Corporation' => 'cskh@vnpost.vn' }
    s.license  = {
        :type => "Copyright",
        :text => "Copyright (c) 2026 Vietnam Post Corporation"
    }

    s.platform = :ios, '12.0'
    s.source   = { :git => 'https://github.com/map4d/map4d-services-ios-sdk.git', :tag => "ipostmap-#{s.version.to_s}" }

    s.ios.vendored_frameworks = 'ipostmap/Map4dServices.xcframework'
end
