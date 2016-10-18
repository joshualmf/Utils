//
//  DebugAssistants.h
//
//  Created by Joshua on 2016/10/18.
//  Copyright © 2016年 Apple Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DebugAssistants : NSObject

/*
 *  打印出指定View所有子View的层级结构
 */
- (void)dumpViewHierarchy:(UIView *)view onLevel:(NSUInteger)level;

/*
 *  打印出指定responder的事件响应链
 */
- (void)dumpResponderChain:(UIResponder *)responder;
@end
