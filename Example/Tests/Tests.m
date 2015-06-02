//
//  NSObject-SerializeTests.m
//  NSObject-SerializeTests
//
//  Created by ipconfiger on 06/03/2015.
//  Copyright (c) 2015 ipconfiger. All rights reserved.
//

#import "BLObj.h"
#import "NSObject+Serializor.h"

@import XCTest;

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testNSObjectToNSDictionary
{
    BLObj *obj = [BLObj new];
    obj.entityId = 5;
    obj.name = @"test";
    NSDictionary *dict = [obj fromNSObject];
    if (!dict) {
        XCTFail(@"serialize failt");
    }
}


- (void)testNSDictionaryToNSObject
{
    BLObj *obj = [BLObj new];
    [obj fromDictionary:@{@"entityId":@(5), @"name":@"test"}];
    NSLog(@"%d", obj.entityId);
    if (obj.entityId == 5){

    }else{
        XCTFail(@"No implement");
    }

}

@end
