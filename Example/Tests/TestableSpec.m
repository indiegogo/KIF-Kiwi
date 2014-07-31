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
        [tester tapViewWithAccessibilityLabel:@"Press me"];
        [tester waitForViewWithAccessibilityLabel:@"Thank you!"];
    });
    
});

SPEC_END
