//
//  KWExample+KIFTester.m
//  Indiegogo
//
//  Created by Paul Zabelin on 1/14/14.
//  Copyright (c) 2014 Indiegogo Inc. All rights reserved.
//

#import "KWExample+KIFTester.h"

// Similar implementation to
// https://github.com/kif-framework/KIF/blob/master/Additions/SenTestCase-KIFAdditions.m
//
// Using the KWExample as KIFTestActorDelegate is better for debugging
// This implementation reports failure with the correct context to the line of code where failure happend
// using SenTestCase implementaiton of this example cause lost of context
//
#import <KIF/UIApplication-KIFAdditions.h>
#import "UIView+TestAdditions.h"

@implementation KWExample (KIFTester)

NSString *const kExceptionFilenameKey = @"FilenameKey";
NSString *const kExceptionLinenumberKey = @"LineNumberKey";

#pragma mark - KIFTestActorDelegate

- (void)failWithException:(NSException *)exception stopTest:(BOOL)stop {
    
    if (stop) {
        [self writeScreenshotForException:exception];
    }
    
    KWCallSite *callsite = [KWCallSite callSiteWithFilename:[exception userInfo][kExceptionFilenameKey]
                                                 lineNumber:[[exception userInfo][kExceptionLinenumberKey] unsignedIntegerValue]];
    KWFailure *failure = [KWFailure failureWithCallSite:callsite
                                                message:[exception reason]];
    [self reportFailure:failure];
    if (stop && ([[exception reason] rangeOfString:@"Failed to find accessibility element with the label"].location != NSNotFound || [[exception reason] rangeOfString:@"Could not find view matching"].location != NSNotFound)) {
        NSLog(@"All accessibility labels currently found in view: %@", [[[UIApplication sharedApplication] keyWindow] allAccessibilityLabels]);
        [exception raise];
    }
}

- (void)failWithExceptions:(NSArray *)exceptions stopTest:(BOOL)stop {
    for (NSException *exception in exceptions) {
        [self failWithException:exception stopTest:stop];
    }
}

- (void)writeScreenshotForException:(NSException *)exception {
    NSString *outputPath = [[[NSProcessInfo processInfo] environment] objectForKey:@"KIF_SCREENSHOTS"];
    NSError *error = nil;
    
    if (outputPath) {
        [[NSFileManager defaultManager] createDirectoryAtPath:outputPath withIntermediateDirectories:YES attributes:nil error:&error];
        NSAssert1(!error, @"Failed to create screenshot folder at: %@", outputPath);
    }
    
    UIApplication *app = [UIApplication sharedApplication];
    NSString *description = [[self descriptionWithContext] stringByReplacingOccurrencesOfString:@"/" withString:@""];
    [app writeScreenshotForLine:[[exception userInfo][kExceptionLinenumberKey] unsignedIntegerValue]
                         inFile:[exception userInfo][kExceptionFilenameKey]
                    description:description
                          error:&error];
    if (error) {
        error = nil;
        [app writeScreenshotForLine:[[exception userInfo][kExceptionLinenumberKey] unsignedIntegerValue]
                             inFile:[exception userInfo][kExceptionFilenameKey]
                        description:nil
                              error:&error];
    }
}

@end
