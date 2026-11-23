# Map4D Services SDK
[![map4d](https://img.shields.io/badge/map4d-services-orange)](https://map4d.vn/)
[![platform](https://img.shields.io/cocoapods/p/Map4dServices)](https://www.apple.com/ios/)
[![cocoapods](https://img.shields.io/cocoapods/v/Map4dServices)](https://cocoapods.org/pods/Map4dServices)

> Map4D Services SDK brings the [Map4D API Services](https://api.map4d.vn/sdk/docs/index.html) for your iOS Application

## Requirements

- iOS 12.0 or later
- Xcode 12 or later

## Installation

### CocoaPods

Update your cocoapods local repo

```shell
pod repo update
```

Add to Podfile

```shell
pod 'Map4dServices'
```

## Provide access key

Edit `Info.plist` and add Map4d services access key.  
Get services access key at [Map4D developer page](https://map.map4d.vn/developer/key)

```xml
<key>Map4dServicesAccessKey</key>
<string>YOUR_SERVICES_ACCESS_KEY</string>
```

## Example

Get place detail

```swift
import Map4dServices

let service = MFPlacesService()
service.fetchPlaceDetail(withPlaceId: "60dd3850f81cb14bc880ed52") { result, error in
  guard let result = result else {
    dump(error)
    return
  }
  print("name \(result.name)")
}
```

-------

Copyright (c) 2016-2026 IOT Link Ltd. All Rights Reserved.
