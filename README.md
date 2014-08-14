# KIF-Kiwi

Write [KIF](https://github.com/kif-framework/KIF) tests [Kiwi](https://github.com/kiwi-bdd/Kiwi) style!

KIF-Kiwi is a bridge between the Keep It Functional and Kiwi frameworks.  It allows you to perform KIF actions within Kiwi spec.

[![CI Status](http://img.shields.io/travis/IndieGoGo/KIF-Kiwi.svg?style=flat)](https://travis-ci.org/IndieGoGo/KIF-Kiwi)
[![Version](https://img.shields.io/cocoapods/v/KIF-Kiwi.svg?style=flat)](http://cocoadocs.org/docsets/KIF-Kiwi)
[![License](https://img.shields.io/cocoapods/l/KIF-Kiwi.svg?style=flat)](http://cocoadocs.org/docsets/KIF-Kiwi)
[![Platform](https://img.shields.io/cocoapods/p/KIF-Kiwi.svg?style=flat)](http://cocoadocs.org/docsets/KIF-Kiwi)

## Usage
See the [TestableSpec.m](https://github.com/IndieGoGo/KIF-Kiwi/blob/master/Example/Tests/TestableSpec.m) example:
```objective-c
#import <KIF-Kiwi.h>

SPEC_BEGIN(MainViewAppSpec)

	describe(@"Main view", ^{
		
		it(@"should have tappable button", ^{
            [tester tapViewWithAccessibilityLabel:@"Tap me"];
            [tester waitForViewWithAccessibilityLabel:@"Button tapped!"];
		});

	});
	
SPEC_END
```

To begin running the example project tests, clone the repo, and open xcode workspace in the `Example` directory:
```bash
git clone https://github.com/IndieGoGo/KIF-Kiwi.git
cd KIF-Kiwi/Example/
open KIF-Kiwi.workspace
```
Press ```⌘-U``` in Xcode or select Product->Test from the menu to run the tests.

You can also run the example tests from the command-line:
```
xcodebuild test -workspace KIF-Kiwi.xcworkspace -scheme KIF-Kiwi -sdk iphonesimulator
```
or by using [xctool](https://github.com/facebook/xctool):
```
xctool test
```
The test output will show a description of the test:
```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
2014-08-01 02:28:15.661 KIF-Kiwi[14407:70b] + 'Testable, should have working button' [PASSED]
━━━━┳━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    ✓ -[SampleAppSpec Testable_ShouldHaveWorkingButton] (761 ms)
    1 passed, 0 failed, 0 errored, 1 total (761 ms)

** TEST SUCCEEDED: 1 passed, 0 failed, 0 errored, 1 total ** (13862 ms)

```

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
* Irvin Zhan, irvintzhan@gmail.com

## License

KIF-Kiwi is available under the MIT license. See the LICENSE file for more info.
