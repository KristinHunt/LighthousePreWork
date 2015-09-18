//
//  ViewController.m
//  Sorted Array
//
//  Created by Kristin Hunt on 9/10/15.
//  Copyright (c) 2015 Krispy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  NSArray *array = @[@25, @97, @476, @1289, @4, @8543, @76, @3, @24, @6965];
  array = [array sortedArrayUsingSelector:@selector(compare:)];
  
  int max = [[array lastObject] floatValue];
  
  printf("highest number is %i \n", max);
  
  
  // int min = [array [0] floatValue];
  // printf("lowest numbr is %i \n", min);

}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
