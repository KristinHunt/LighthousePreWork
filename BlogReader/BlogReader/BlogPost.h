//
//  BlogPost.h
//  BlogReader
//
//  Created by Kristin Hunt on 9/7/15.
//  Copyright (c) 2015 Krispy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlogPost : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *author;
@property (nonatomic, strong) NSString *thumbnail;
@property (nonatomic, strong) NSString *date;
@property (nonatomic, strong) NSURL *url;


// Designated initializer

- (id) initWithTitle:(NSString *)title;
+ (id) blogPostWithTitle: (NSString *)title;

- (NSURL *) thumbnailURL;

- (NSString *) formattedDate;



@end
