//
//  KWExample+KIFTester.h
//  Indiegogo
//
//  Created by Paul Zabelin on 1/14/14.
//  Copyright (c) 2014 Indiegogo Inc. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import <KIF/KIF.h>

#ifdef KIFActorWithClass
#undef KIFActorWithClass
#endif

#define KIFActorWithClass(clazz) \
    [clazz actorInFile:[NSString stringWithUTF8String:__FILE__] \
                atLine:__LINE__ \
              delegate:[[KWExampleSuiteBuilder sharedExampleSuiteBuilder] currentExample]]


@interface KWExample (KIFTester) <KIFTestActorDelegate>

@end
