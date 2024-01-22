# Animal Library
## Developer Guide
## 1. Project Structure
- Screens -> Pages/screens folder
    - Screen -> (Each screen has ViewController, ViewModel, and Subviews(Optional) )
        -  ScreenViewController
        -  ScreenViewModel -> (UI logic)
        -  Subviews (Optional)
- Components -> Shared components e.g views, constants, extensions, vendors, managers
    - Views (shared views)
    - Constants
    - Extensions
    - Vendors (3rd party code or someone's code from github)
- UseCases -> data source logic, response mapping happens here
    - RemoteUseCase
    - PersistentUseCase
- Repositories -> data source bridge, can be from remote/server or local data
    - RemoteRepository
    - PersistentStorage
- Persistents -> Local storage e.g CoreData, Realm, UserDefaults, KeyChain, etc
    - CoreDataStorage
    - UserDefaultStorage
- Network -> all protocol needed to generate URLRequest, perform network calls, mapping response
    - Requestable
    - NetworkSession
    - NetworkService
    - DataTransferService
- Models -> no need to explain this, it's just models 😁
    - ResponseModels
    - RequestModels
    - DomainModels
- Resources -> all resources places here e.g. Fonts, Images, Lottie, GIF, Info.plist

## 2. Prerequisite
Technology | Version
-- | --
CocoaPods | 1.13.0
Xcode | 15.0.1
Swift | 5

## 3. Dependency
I use [cocoapods](https://cocoapods.org/) for the dependency manager
Library | Description
-- | --
SnapKit | To simplify programatically auto layout
netfox | Network debugger
KingFisher | Url image loader

## 4. Installation
- run `pod install` to install the dependencies
- open `AnimalLibrary.xcworkspace`
- choose device target then press `Command + R` to install and launch the apps
- choose device target then press `Command + U` to run unit test

## 5. Explanation
- I use programatic auto layout to create the UI instead of .xib to increase code readability during code review, easier to solve conflict when the project getting more complex and many developers involved, reduce compile time, etc. I use `Snapkit` to handle auto layout constraint, it's easier then using native `addConstraints(_ constraints: [NSLayoutConstraint])`.
- `netfox` to debug the network, simple and powerful to inspect network calls
- `KingFisher/SDWebImage` to load image from url
- MVVM as architecture just because it's the architecture that I'm most familiar with, and it's seperate each layer as I mentioned in `1. Project Structure`
- URLSession to handle network calls, I somehow prefer URLSession than Alamofire because Alamofire also use URLSession inside. Also it's not that hard to create the abstraction for the network calls.
