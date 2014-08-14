//
//  TestableSpec.m
//  TestableSpec
//
//  Created by Indiegogo Pair on 7/31/14.
//  Copyright (c) 2014 Indiegogo. All rights reserved.
//

#import "KIF-Kiwi.h"

SPEC_BEGIN(SampleAppSpec)

describe(@"Testable", ^{
    
    it(@"should have working button", ^{
        [tester tapViewWithAccessibilityLabel:@"Tap me"];
        [tester waitForViewWithAccessibilityLabel:@"Button tapped!"];
    });
    
});

SPEC_END
