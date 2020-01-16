# KIF-Kiwi

Write [KIF](https://github.com/kif-framework/KIF) tests [Kiwi](https://github.com/kiwi-bdd/Kiwi) style!

KIF-Kiwi is a bridge between the Keep It Functional and Kiwi frameworks.  It allows you to perform KIF actions using Kiwi syntax.

[![CI Status](http://img.shields.io/travis/paulz/KIF-Kiwi.svg?style=flat)](https://travis-ci.org/paulz/KIF-Kiwi)
[![Version](https://img.shields.io/cocoapods/v/KIF-Kiwi.svg?style=flat)](http://cocoadocs.org/docsets/KIF-Kiwi)
[![License](https://img.shields.io/cocoapods/l/KIF-Kiwi.svg?style=flat)](http://cocoadocs.org/docsets/KIF-Kiwi)
[![Platform](https://img.shields.io/cocoapods/p/KIF-Kiwi.svg?style=flat)](http://cocoadocs.org/docsets/KIF-Kiwi)

## Installation

KIF-Kiwi is available through [CocoaPods](http://cocoapods.org). To install KIF-Kiwi, simply add the following line to your Podfile:

    pod 'KIF-Kiwi'

and run

    pod install

## Usage
Include KIF-Kiwi in your specs and start writing KIF tests using Kiwi describe/context and it blocks.  See the [TestableSpec.m](https://github.com/paulz/KIF-Kiwi/blob/master/Example/Tests/TestableSpec.m) example:
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
git clone https://github.com/paulz/KIF-Kiwi.git
cd KIF-Kiwi/Example/
open KIF-Kiwi.xcworkspace
```
Press ```⌘-U``` in Xcode or select Product->Test from the menu to run the tests.

You can also run the example tests from the command-line:
```
xcodebuild test -workspace KIF-Kiwi.xcworkspace -scheme KIF-Kiwi -sdk iphonesimulator13.2 -destination "platform=iOS Simulator,OS=latest,name=iPhone 11 Pro"
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

* Xcode 9
* iOS 9

## Authors

* [Paul Zabelin](https://github.com/paulz)
* [Irvin Zhan](https://github.com/izhan)
* Pair of developers at Indiegogo, tech+gogopair@indiegogo.com

## Contributions

* [@ecaselles](https://github.com/ecaselles)
* [@emmaviolet](https://github.com/emmaviolet)
* [Jan Jirout](https://github.com/janj)


## License

KIF-Kiwi is available under the MIT license. See the LICENSE file for more info.
