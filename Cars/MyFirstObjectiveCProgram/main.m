//
//  main.m
//  MyFirstObjectiveCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cars.h"
#import "Toyota.h"

int main(int argc, const char * argv[]) {
  
  @autoreleasepool {
    
    Cars *toyota = [[Cars alloc] init];
    
    toyota.model = @"4Runner";
    
    Toyota *prius = [[Toyota alloc]initWithModel:@"Prius"];
    
    Cars *nissan = [[Cars alloc]initWithModel:@"Rogue"];
    
    [toyota drive];
    
    //[prius drive];
    NSLog(@"Now I'm driving a %@", prius.model);
    
    //[nissan drive];
    NSLog(@"I used to drive a %@ Nissan!", nissan.model);
}

     return 0;
     
     }
