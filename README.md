[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/EZSwiftExtensions.svg)](https://img.shields.io/cocoapods/v/LFAlertController.svg)
[![Platform](https://img.shields.io/cocoapods/p/LFAlertController.svg?style=flat)](http://cocoapods.org/pods/LFAlertController)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

# Doc Scanner iOS
Project is an iOS app. Code follows [Raywenderlich][RW] style guide. Lint are used before sending pull request. [SwiftLint][SL] autocorrect is used along with [Tailor][TL].

## Dependencies

Thrid party framewoks and Library are managed using Cocoapods.

## Requirements

- iOS 14.0+
- Xcode 12

### Version Management

* Build Number willl increased for each iTunes Connect submission
* App version will only increase on app submiting to App Store
* Each version will have build number starting from 1000

## Folder Structure and Architecture

- Each `Module` Will have its own folder. eg - 
	- Splash
	- Onboarding
	- Profile
- Constants, Generic View, Data Model, Helper etc each will have its own folder
- `SupportingFiles` folder will have
	- Bridging-Header.h
	- Frameworks (Folder for 3rd paty code which does not have Cocoapods) 
	- AppDelegate.swift
	- LaunchScreen.storyboard
	- Info.plist
  
  ## Git
- This project will follow [GitFlow][GF] version control workflow convections 
- `dev` will be the semi-stable branch with `tag` on each stable merge. This is the branch from where IPA should be published to iTunes Test Flight
- `master` will have code that are fully stable with `release` on each merge. App store publishing should be done from this branch only.

[RW]: https://github.com/raywenderlich/swift-style-guide
[SL]: https://github.com/realm/SwiftLint
[TL]: https://tailor.sh/
[GF]: https://www.atlassian.com/git/tutorials/comparing-workflows
[FL]: https://fastlane.tools
[GAN]: https://analytics.google.com/

## Todo
- Setup [Fastlane][FL] Contineous Integration & Deployment
- Setup [Google Analytics][GAN]

