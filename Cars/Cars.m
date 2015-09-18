//
//  Cars.m
//  MyFirstObjectiveCProgram
//
//  Created by Kristin Hunt on 9/11/15.
//  Copyright (c) 2015 treehouse. All rights reserved.
//

#import "Cars.h"

@implementation Cars

- (void)drive {
  NSLog(@"I was driving a %@", self.model);
}


- (id) initWithModel:(NSString *)model {
  self = [super init];
  if (self) {
    self.model = model;
  }

  return self;
}


@end
