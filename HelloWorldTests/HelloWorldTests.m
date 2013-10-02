//
//  HelloWorldTests.m
//  HelloWorldTests
//
//  Created by John Figueiredo on 10/1/13.
//  Copyright (c) 2013 Byliner. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "HelloWorldViewController.h"

@interface HelloWorldTests : XCTestCase

@end

@implementation HelloWorldTests

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

- (void)testChangeGreeting_shouldHaveHelloWhenNoString
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle bundleForClass:[HelloWorldViewController class]]];
    HelloWorldViewController *helloController = [storyboard instantiateInitialViewController];
    XCTAssertNotNil(helloController.view, @"");
    helloController.textField.text = @"";
    [helloController changeGreeting:nil];
    XCTAssertEqualObjects(helloController.label.text, @"Hello, World!", @"Did not match expected value");
}

@end
