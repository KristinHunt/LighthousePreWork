//
//  MasterViewController.m
//  BlogReader
//
//  Created by Kristin Hunt on 9/5/15.
//  Copyright (c) 2015 Krispy. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "BlogPost.h"

@implementation MasterViewController

- (void)awakeFromNib {
  [super awakeFromNib];
}

- (void)viewDidLoad {
  [super viewDidLoad];
  
  
  NSURL *blogURL = [NSURL URLWithString:@"http://blog.teamtreehouse.com/api/get_recent_summary"];
  
  NSData *jsonData = [NSData dataWithContentsOfURL:blogURL];
  
  NSError *error = nil;
  
  NSDictionary *dataDictionary = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&error];
    //NSLog(@"%@", dataDictionary);
  
  self.blogPosts = [NSMutableArray array];
  
  NSArray *blogPostsArray = [dataDictionary objectForKey:@"posts"];
  
  for (NSDictionary *bpDictionary in blogPostsArray) {
    BlogPost *blogPost = [BlogPost blogPostWithTitle:[bpDictionary objectForKey:@"title"]];
    blogPost.author = [bpDictionary objectForKey:@"author"];
    blogPost.url = [NSURL URLWithString:[bpDictionary objectForKey:@"url"]];
    blogPost.thumbnail = [bpDictionary objectForKey:@"thumbnail"];
    blogPost.date = [bpDictionary objectForKey:@"date"];
    
    [self.blogPosts addObject:blogPost];
  }
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - Segues

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//  if ([[segue identifier] isEqualToString:@"showDetail"]) {
//      NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//      NSString *blogPosts = self.blogPosts[indexPath.row];
//      [[segue destinationViewController] setDetailItem:blogPosts];
//  }
//}

#pragma mark - Table View

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//  return 1;
// no need for this code since we have only one section in table or keep and just return 1

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return self.blogPosts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
  
  BlogPost *blogPost = [self.blogPosts objectAtIndex:indexPath.row];
  
  if ([blogPost.thumbnail isKindOfClass:[NSString class]]) {
    NSData *imageData = [NSData dataWithContentsOfURL:blogPost.thumbnailURL];
    UIImage *image = [UIImage imageWithData:imageData];
    cell.imageView.image = image;
    
  } else {
    cell.imageView.image = [UIImage imageNamed:@"BlogIcon.png"];
  }
  
  cell.textLabel.text = blogPost.title;
  cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ - %@", blogPost.author, [blogPost formattedDate]];
  
  return cell;
  
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  if ([segue.identifier isEqualToString:@"showBlogPost"]) {
    NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
    BlogPost *blogPost = [self.blogPosts objectAtIndex:indexPath.row];
    
    [segue.destinationViewController setBlogPostURL:blogPost.url];
    
  }
}


@end
