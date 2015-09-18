//
//  DetailViewController.h
//  BlogReader
//
//  Created by Amit Bijlani on 11/7/12.
//  Copyright (c) 2012 Amit Bijlani. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
