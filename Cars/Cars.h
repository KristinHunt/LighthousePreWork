//
//  Cars.h
//  MyFirstObjectiveCProgram
//
//  Created by Kristin Hunt on 9/11/15.
//  Copyright (c) 2015 treehouse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cars : NSObject

@property (copy) NSString *model;

- (void)drive;

- (id) initWithModel:(NSString *)model;


@end
