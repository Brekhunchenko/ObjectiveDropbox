//
//  DropboxListFolderMembersArgsTests.m
//  ObjectiveDropbox
//
//  Created by Михаил Мотыженков on 25.04.16.
//  Copyright © 2016 Mikhail Motyzhenkov. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "DropboxListFolderMembersArgs.h"

@interface DropboxListFolderMembersArgsTests : XCTestCase

@property DropboxListFolderMembersArgs *arg;

@end

@implementation DropboxListFolderMembersArgsTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testShortInit {
    NSString *sharedFolderID = @"a;sldjfa;sldfjk";
    UInt32 limit = 234;
    
    self.arg = [[DropboxListFolderMembersArgs alloc] initWithSharedFolderID:sharedFolderID limit:limit];
    
    XCTAssertEqualObjects(self.arg.sharedFolderID, sharedFolderID);
    XCTAssertEqual(self.arg.limit, limit);
    XCTAssertNil(self.arg.actions);
}

- (void)testFullInit {
    NSString *sharedFolderID = @"a;s;sldfjk";
    UInt32 limit = 99;
    
    self.arg = [[DropboxListFolderMembersArgs alloc] initWithSharedFolderID:sharedFolderID limit:limit actions:DMAMakeEditor, DMAMakeViewer, nil];
    
    XCTAssertEqualObjects(self.arg.sharedFolderID, sharedFolderID);
    XCTAssertEqual(self.arg.limit, limit);
    XCTAssertEqual(self.arg.actions.count, 2);
    XCTAssertEqual(self.arg.actions[0], @(DMAMakeEditor));
    XCTAssertEqual(self.arg.actions[1], @(DMAMakeViewer));
}


@end
