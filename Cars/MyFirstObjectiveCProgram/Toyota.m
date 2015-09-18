//
//  Toyota.m
//  MyFirstObjectiveCProgram
//
//  Created by Kristin Hunt on 9/18/15.
//  Copyright (c) 2015 treehouse. All rights reserved.
//

#import "Toyota.h"

@implementation Toyota

- (id) initWithModel:(NSString *)prius {
  self = [super init];
  if (self) {
    self.model = prius;
  }
  
  return self;
}

+ (id) initWithModel:(NSString *)prius {
  return [[self alloc] initWithModel:prius];
}

@end