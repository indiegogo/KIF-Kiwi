# KIF-Kiwi

Write [KIF](https://github.com/kif-framework/KIF) tests [Kiwi](https://github.com/kiwi-bdd/Kiwi) style!

KIF-Kiwi is a bridge between the Keep It Functional and Kiwi frameworks.  It allows you to perform KIF actions using Kiwi syntax.

[![CI Status](http://img.shields.io/travis/indiegogo/KIF-Kiwi.svg?style=flat)](https://travis-ci.org/indiegogo/KIF-Kiwi)
[![Version](https://img.shields.io/cocoapods/v/KIF-Kiwi.svg?style=flat)](http://cocoadocs.org/docsets/KIF-Kiwi)
[![License](https://img.shields.io/cocoapods/l/KIF-Kiwi.svg?style=flat)](http://cocoadocs.org/docsets/KIF-Kiwi)
[![Platform](https://img.shields.io/cocoapods/p/KIF-Kiwi.svg?style=flat)](http://cocoadocs.org/docsets/KIF-Kiwi)

## Installation

KIF-Kiwi is available through [CocoaPods](http://cocoapods.org). To install KIF-Kiwi, simply add the following line to your Podfile:

    pod 'KIF-Kiwi'

and run

    pod install
    
## Usage
Include KIF-Kiwi in your specs and start writing KIF tests using Kiwi describe/context and it blocks.  See the [TestableSpec.m](https://github.com/IndieGoGo/KIF-Kiwi/blob/master/Example/Tests/TestableSpec.m) example:
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

Please see the [KIF](https://github.com/kif-framework/KIF) and [Kiwi](https://github.com/kiwi-bdd/Kiwi) documentation for more information on these frameworks.

## Testing

To begin running the example project tests, clone the repo, and open xcode workspace in the `Example` directory:
```bash
git clone https://github.com/IndieGoGo/KIF-Kiwi.git
cd KIF-Kiwi/Example/
open KIF-Kiwi.xcworkspace
```
Press ```⌘-U``` in Xcode or select Product->Test from the menu to run the tests.

You can also run the example tests from the command-line:
```
xcodebuild test -workspace KIF-Kiwi.xcworkspace -scheme KIF-Kiwi -sdk iphonesimulator -destination <device on your system>
```
e.g. 
```
xcodebuild test -workspace KIF-Kiwi.xcworkspace -scheme KIF-Kiwi -sdk iphonesimulator -destination 'platform=iOS Simulator,OS=10.1,name=iPhone 6s'
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

## Contributing
Please report any issues.  PRs are always welcome!

To submit a PR:

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## Requirements

* Xcode 8.1 
* iOS 8

## Authors

* Pair of developers at Indiegogo, tech+gogopair@indiegogo.com
* Paul Zabelin
* Irvin Zhan

## Maintainer

* [Glen Tregoning](https://github.com/glentregoning)

## Contributions 

* [@ecaselles](https://github.com/ecaselles)
* [@emmaviolet](https://github.com/emmaviolet)


## License

KIF-Kiwi is available under the MIT license. See the LICENSE file for more info.
