//
//  DropboxShareFolderJobStatusResult.m
//  Pods
//
//  Created by Михаил Мотыженков on 22.04.16.
//
//

#import "DropboxShareFolderJobStatusResult.h"

@implementation DropboxShareFolderJobStatusResult

- (instancetype)init
{
    self = [super init];
    if (self) {
        _status = DSFJSNotSet;
    }
    return self;
}

@end
