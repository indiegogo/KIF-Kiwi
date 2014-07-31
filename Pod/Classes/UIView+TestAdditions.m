//
//  UIView+Additions.m
//  Indiegogo
//
//  Created by Indiegogo Pair on 5/21/14.
//  Copyright (c) 2014 Indiegogo Inc. All rights reserved.
//

#import "UIView+TestAdditions.h"
#import <UIView-KIFAdditions.h>

@implementation UIView (TestAdditions)

- (NSArray *)allAccessibilityLabels {
    NSMutableSet *labels = [NSMutableSet set];
    UIAccessibilityElement __unused *found = [self accessibilityElementMatchingBlock:^BOOL(UIAccessibilityElement *element) {
        if (element.accessibilityLabel) {
            [labels addObject:element.accessibilityLabel];
        }
        return NO;
    }];
    NSAssert(found == nil, @"should not find any elements");
    return [[labels allObjects] sortedArrayUsingSelector:@selector(compare:)];
}

@end
