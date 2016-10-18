//
//  DebugAssistants.m
//
//  Created by Joshua on 2016/10/18.
//  Copyright © 2016年 Apple Inc. All rights reserved.
//

#import "DebugAssistants.h"

@implementation DebugAssistants

- (void)dumpViewHierarchy:(UIView *)view onLevel:(NSUInteger)level
{
    NSMutableString *outputString = [NSMutableString string];
    for (int i = 0; i < level; i++) {
        [outputString appendString:@"--"];
    }
    [outputString appendFormat:@"[%lu] %@", (unsigned long)level, [view class]];
    NSLog(@"%@", outputString);
    NSArray *subViews = [view subviews];
    for (int i = 0; i < subViews.count; i++) {
        [self dumpViewHierarchy:[subViews objectAtIndex:i] onLevel:++level];
    }
}

- (void)dumpResponderChain:(UIResponder *)responder
{
    NSLog(@"-- [%@]", [responder class]);
    if (responder.nextResponder) {
        NSLog(@" |");
        NSLog(@" V");
        [self dumpResponderChain:responder.nextResponder];
    }
}

@end
