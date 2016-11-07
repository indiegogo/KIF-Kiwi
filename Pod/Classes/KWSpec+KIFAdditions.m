//
//  KWSpec+KIFAdditions.m
//  Pods
//
//  Created by Eduardo Caselles on 07/11/2016.
//
//

#import "KWSpec+KIFAdditions.h"
#import "KIFAccessibilityEnabler.h"

@implementation KWSpec (KIFAdditions)

+ (void)setUp
{
    KIFEnableAccessibility();
    [super setUp];
}

@end
