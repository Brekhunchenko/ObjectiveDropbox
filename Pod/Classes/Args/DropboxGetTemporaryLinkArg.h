//
//  DropboxGetTemporaryLinkArg.h
//  Pods
//
//  Created by Михаил Мотыженков on 05.04.16.
//
//

#import <Foundation/Foundation.h>

@interface DropboxGetTemporaryLinkArg : NSObject

/**
 *  The path to the file you want a temporary link to. Examples: "/Homework/math/Prime_Numbers.txt", "id:a4ayc_80_OEAAAAAAAAAYa", "rev:a1c10ce0dd78"
 */
@property (nonatomic, nonnull) NSString *path;

- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path;

@end
