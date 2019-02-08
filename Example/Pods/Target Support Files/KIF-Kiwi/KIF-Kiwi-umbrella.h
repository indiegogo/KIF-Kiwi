#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "KIF-Kiwi.h"
#import "KWExample+KIFTester.h"
#import "KWSpec+KIFAdditions.h"
#import "UIView+TestAdditions.h"

FOUNDATION_EXPORT double KIF_KiwiVersionNumber;
FOUNDATION_EXPORT const unsigned char KIF_KiwiVersionString[];

