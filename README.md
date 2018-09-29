Kiriban
======

![License MIT](https://go-shields.herokuapp.com/license-MIT-blue.png)
[![Build Status](https://travis-ci.com/isaoeka/Kiriban-Swift.svg?branch=master)](https://travis-ci.com/isaoeka/Kiriban-Swift)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/hsylife/SwiftyPickerPopover)
[![Cocoapods](https://cocoapod-badges.herokuapp.com/v/Kiriban-Swift/badge.png)](http://cocoapods.org/?q=Kiriban-Swift)
[![Cocoapods](https://cocoapod-badges.herokuapp.com/p/Kiriban-Swift/badge.png)](http://cocoapods.org/?q=Kiriban-Swift)

Swift extension of kiriban for ios app.

## Installation

### CocoaPods

Kiriban is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "Kiriban-Swift"
```

### Carthage

```
github "isaoeka/Kiriban-Swift"
```

## Usage

### Extension for `Int`

```Swift
/// 10, 200, 3000, ...etc
var isKiriban: Bool { get }
/// 11, 222, 3333, ...etc
var isZoroban: Bool { get }
/// 123, 1234, 12345, ...etc
var isRenban: Bool { get }
```

## Author

- [Isao Kono](https://twitter.com/isaoeka)

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).
