# KIF-Kiwi

[![CI Status](http://img.shields.io/travis/IndieGoGo/KIF-Kiwi.svg?style=flat)](https://travis-ci.org/IndieGoGo/KIF-Kiwi)
[![Version](https://img.shields.io/cocoapods/v/KIF-Kiwi.svg?style=flat)](http://cocoadocs.org/docsets/KIF-Kiwi)
[![License](https://img.shields.io/cocoapods/l/KIF-Kiwi.svg?style=flat)](http://cocoadocs.org/docsets/KIF-Kiwi)
[![Platform](https://img.shields.io/cocoapods/p/KIF-Kiwi.svg?style=flat)](http://cocoadocs.org/docsets/KIF-Kiwi)

## Usage

```objective-c
#import <KIF-Kiwi.h>

SPEC_BEGIN(MainViewAppSpec)

	describe(@"Main view", ^{
		
		it(@"should have tappable button", ^{
            [tester tapViewWithAccessibilityLabel:@"Press me"];
            [tester waitForViewWithAccessibilityLabel:@"Thank you!"];
		});

	});
	
SPEC_END
```

To run the example project tests, clone the repo, and open xcode workspace in Example directory.

## Requirements

* Xcode >= 5.1
* iOS 7

## Installation

KIF-Kiwi is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod 'KIF-Kiwi'

## Authors

* Pair of developers at Indiegogo, tech+gogopair@indiegogo.com
* Paul Zabelin, paul@indiegogo.com

## License

KIF-Kiwi is available under the MIT license. See the LICENSE file for more info.
