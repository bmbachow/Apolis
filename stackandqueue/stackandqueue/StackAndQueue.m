//
//  Stack.m
//  stackandqueue
//
//  Created by Brian Bachow on 3/13/22.
//

#import <Foundation/Foundation.h>
#import "StackAndQueue.h"

@implementation StackAndQueue

- (NSMutableArray*)addToStack:(NSMutableArray*)arr number:(NSNumber*)num {
    
    [arr addObject:num];
    return arr;
}

- (NSMutableArray*)addToQueue:(NSMutableArray*)arr number:(NSNumber*)num {
    [arr insertObject:num atIndex:0];
    return arr;
    
}

- (NSMutableArray*)removeFromStackOrQueue:(NSMutableArray*)arr number:(NSNumber*)num {
    [arr removeLastObject];
    return arr;
}

@end



