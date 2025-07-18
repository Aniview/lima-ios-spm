# lima-ios-spm
Lima iOS SDK - Swift Package

## Installation with SPM:
XCode --> Project --> Package --> "+" \
Add package:
```
https://github.com/Aniview/lima-ios-spm
```

## Configuration

It's important to call `LimaUtil.shared.initSDK` as early as possible
```swift
import Lima
import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {

        let demoStoreURL = URL(string: "https://apps.apple.com/us/app/demo-app/id1234567")!
        LimaUtil.shared.initSDK(storeUrl: demoStoreURL)

        return true
    }
}
```

## Enriching VAST URL

```swift
let vastUrl = "..." // the original VAST URL
val enrichedVastUrl = LimaUtil.shared.enrichVastUrl(vastUrl)
// use enrichedVastUrl with Google IMA SDK
```

## Sample Project

https://github.com/Aniview/lima-ios-example 

