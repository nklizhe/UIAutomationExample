//
//  Acceptance_Tests.m
//  Acceptance Tests
//
//  Created by Zhe Li on 3/2/15.
//  Copyright (c) 2015 Zhe Li. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>

#import "ViewController.h"
#import "AppDelegate.h"
@interface Acceptance_Tests : XCTestCase

@end

@implementation Acceptance_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testClickButton {
    AKANSButtonMatcher *matcher = [AKANSButtonMatcher matcherWithTitle:@"Click Me!"];
    
    NSWindow *mainWindow = [tester waitForWindowMatching:[AKANSWindowTitleMatcher matcherWithTitle:@"Window"]];
    XCTAssertNotNil(mainWindow);
    NSView *button = [tester waitForViewMatching:matcher inWindow:mainWindow];
    XCTAssertNotNil(button);
    [tester clickOnView:button];
    
    [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:1.f]];
}

- (void)testOpenWindow {
    NSWindow *mainWindow = [tester waitForWindowMatching:[AKANSWindowTitleMatcher matcherWithTitle:@"Window"]];
    XCTAssertNotNil(mainWindow);
    AKAAccessibilityMatcher *matcher = [AKAAccessibilityMatcher matcherWithAccessibilityAttribute:NSAccessibilityIdentifierAttribute value:@"Open"];
//    NSView *openBtn = [tester waitForViewMatching:matcher inWindow:mainWindow];
    
    NSView *openBtn = [tester waitForViewMatching:matcher];
    XCTAssertNotNil(openBtn);
    
    [tester clickOnView:openBtn];
    
    [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:1.f]];
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
