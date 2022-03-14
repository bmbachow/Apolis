//
//  stackandqueueTests.m
//  stackandqueueTests
//
//  Created by Brian Bachow on 3/13/22.
//

#import <XCTest/XCTest.h>
#import "StackAndQueue.h"

@interface stackandqueueTests : XCTestCase

@end

@implementation stackandqueueTests

StackAndQueue *object = NULL;

- (void)setUp {
    
    object = [[StackAndQueue alloc] init];
    //I'm sure theres a better way to set up the initial array
    NSMutableArray *myArray = [[NSMutableArray alloc] init];
    NSNumber *firstNumber = [NSNumber numberWithInt:1];
    NSNumber *secondNumber = [NSNumber numberWithInt:2];
    NSNumber *thirdNumber = [NSNumber numberWithInt:3];
    NSNumber *fourthNumber = [NSNumber numberWithInt:4];
    NSNumber *fifthNumber = [NSNumber numberWithInt:5];
    [myArray addObject:firstNumber];
    [myArray addObject:secondNumber];
    [myArray addObject:thirdNumber];
    [myArray addObject:fourthNumber];
    [myArray addObject:fifthNumber];
}

- (void)tearDown {
    object = NULL;
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testAddToStack{
    XCTAssertEqual([object addToStack:[1,2,3,4] number:5], [[1,2,3,4,5]]);
}

- (void)testAddToQueue{
    
}

- (void)testRemoveFromStackOrQueue{
    
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
