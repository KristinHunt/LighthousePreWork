//
//  DetailViewController.h
//  BlogReader
//
//  Created by Kristin Hunt on 9/5/15.
//  Copyright (c) 2015 Krispy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@property (strong, nonatomic) IBOutlet UIWebView *detailView;

@property (strong, nonatomic) NSURL *blogPostURL;

@end

