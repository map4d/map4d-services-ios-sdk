# Map4D Services SDK
[![map4d](https://img.shields.io/badge/map4d-services-orange)](https://map4d.vn/)
[![platform](https://img.shields.io/cocoapods/p/Map4dServices)](https://www.apple.com/ios/)
[![cocoapods](https://img.shields.io/cocoapods/v/Map4dServices)](https://cocoapods.org/pods/Map4dServices)

> Map4D Services SDK brings the [Map4D API Services](https://api.map4d.vn/sdk/docs/index.html) for your iOS Application

## Requirements

- iOS 12.0 or later.
- Swift Package Manager integration requires Xcode 12 or later.
- Supported architectures: arm64 for iOS devices; arm64 and x86_64 for iOS Simulator.

## Installation

### Swift Package Manager

Swift Package Manager is supported starting with **version 2.6.0**.

In Xcode:

1. Choose **File > Add Package Dependencies** (or **File > Swift Packages > Add Package Dependency** in Xcode 12).
2. Enter the repository URL: `https://github.com/map4d/map4d-services-ios-sdk.git`.
3. Select **Up to Next Major Version**, starting from **2.6.0**.
4. Add the **Map4dServices** product to your application target.

For a Swift package, add the repository to `dependencies` in `Package.swift`:

```swift
.package(
    url: "https://github.com/map4d/map4d-services-ios-sdk.git",
    from: "2.6.0"
)
```

Then add the product to your target's `dependencies`:

```swift
.product(name: "Map4dServices", package: "map4d-services-ios-sdk")
```

Swift Package Manager automatically downloads `Map4dServices.xcframework.zip` from the matching GitHub Release and verifies its SHA-256 checksum. Install Map4dServices using one package manager per application target.

### CocoaPods

Use [CocoaPods](https://cocoapods.org).

1. Update your cocoapods local repo

```shell
pod repo update
```

2. Add to Podfile

```shell
pod 'Map4dServices'
```

## Releasing the SDK

Starting with 2.6.0, both Swift Package Manager and CocoaPods download the same ZIP asset from GitHub Releases. The XCFramework is no longer committed to this repository. The ZIP must contain `Map4dServices.xcframework` at its root.

For version **2.6.0**:

1. On a build machine with an Xcode version that supports the SDK's iOS 12 deployment target, build and package the SDK from the `map4d-services-ios` source repository:

   ```shell
   sh build.sh
   ```

   The Release build automatically packages the XCFramework and checks that every slice has the same version and minimum iOS 12.0. For version `2.6.0`, it creates these files in `dist/releases/2.6.0/`:

   - `Map4dServices.xcframework.zip`
   - `Package.swift`, with the release URL and the ZIP's actual SHA-256 checksum
   - `checksum.txt`

   To package an existing build, run `sh scripts/package-release.sh 2.6.0 /path/to/Map4dServices.xcframework`.

2. Copy the generated `Package.swift` into the root of this distribution repository. The checked-in checksum placeholder must be replaced before tagging; it cannot be determined until the final ZIP exists. Confirm `Map4dServices.podspec` has version `2.6.0`.
3. Commit the release changes and create and push tag `2.6.0`, including the generated manifest.
4. Create a GitHub Release for tag `2.6.0` and upload the generated `Map4dServices.xcframework.zip` unchanged. The asset URL must be:

   ```text
   https://github.com/map4d/map4d-services-ios-sdk/releases/download/2.6.0/Map4dServices.xcframework.zip
   ```

5. Verify package installation from tag `2.6.0`. Publish the CocoaPods specification after the ZIP is publicly available.

If the ZIP changes, regenerate `Package.swift` before tagging. After publication, publish a new version instead of replacing an existing version's ZIP, checksum, or tag.

## Provide access key

Edit `Info.plist` and add Map4d services access key

```xml
<key>Map4dServicesAccessKey</key>
<string>YOUR_SERVICES_ACCESS_KEY</string>
```

## Example

Get place detail

### Swift

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

### Objective-C

```objc
#import <Map4dServices/Map4dServices.h>

MFPlacesService* service = [[MFPlacesService alloc] init];
[service fetchPlaceDetailWithPlaceId:placeId completionHandler:^(id<MFPlaceDetailResult> _Nullable result, id<MFServiceError>  _Nullable error) {
  if (error != nil) {
    NSLog(@"code: %@, message: %@", error.code, error.message);
  }
  else {
    NSLog(@"name: %@", result.name);
  }
}];
```
<!-- tabs:end -->

License
-------

Copyright (C) 2026 IOT Link Ltd. All Rights Reserved.
