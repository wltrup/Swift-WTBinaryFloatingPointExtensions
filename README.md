# WTBinaryFloatingPointExtensions

[![CI Status](http://img.shields.io/travis/wltrup/Swift-WTBinaryFloatingPointExtensions.svg?style=flat)](https://travis-ci.org/wltrup/Swift-WTBinaryFloatingPointExtensions)
[![Version](https://img.shields.io/cocoapods/v/WTBinaryFloatingPointExtensions.svg?style=flat)](http://cocoapods.org/pods/WTBinaryFloatingPointExtensions)
[![License](https://img.shields.io/cocoapods/l/WTBinaryFloatingPointExtensions.svg?style=flat)](http://cocoapods.org/pods/WTBinaryFloatingPointExtensions)
[![Platform](https://img.shields.io/cocoapods/p/WTBinaryFloatingPointExtensions.svg?style=flat)](http://cocoapods.org/pods/WTBinaryFloatingPointExtensions)

## IMPORTANT
2019.11.30: This project has been **deprecated** since the Swift Standard Library now has (part of) the functionality that this library provides. The remaining functionality - the trigonometry-associated one - isn't so hard to implement on a case-by-case basis.

## What

**WTBinaryFloatingPointExtensions** adds to all floating point types conforming to the
`BinaryFloatingPoint` protocol some commonly used trigonometry-related computed properties,
conversions between degrees and radians, and functions to generate uniformly distributed
(pseudo) random values. Here's the full set of API additions:

```swift
public enum WTBinaryFloatingPointExtensionsError : Error
{
    case allArgumentsAreZero
}

public static var piOver4: Self { get }
public static var piOver2: Self { get }
public static var threePiOver2: Self { get }
public static var twoPi: Self { get }

public var radiansInDegrees: Self { get }
public var degreesInRadians: Self { get }

public static var random01: Self { get }

public static func random(_ a: Self, _ b: Self) -> Self
public static func randomNonZero(_ a: Self, _ b: Self) throws -> Self
```

## Why

Because I find myself using those quite often and they are missing from the default implementations
of the floating point types.

## Tests

**WTBinaryFloatingPointExtensions** adds 9 extensions, all fully tested by 14 tests with 100% coverage.

## Changelog

Changes to **WTBinaryFloatingPointExtensions** are listed
[here](https://github.com/wltrup/Swift-WTBinaryFloatingPointExtensions/blob/master/CHANGELOG.md).

## Installation

**WTBinaryFloatingPointExtensions** is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "WTBinaryFloatingPointExtensions"
```

## Author

Wagner Truppel, trupwl@gmail.com

## License

**WTBinaryFloatingPointExtensions** is available under the MIT license. See the LICENSE file for more info.
