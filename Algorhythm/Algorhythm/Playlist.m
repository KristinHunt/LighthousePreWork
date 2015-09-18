//
//  Playlist.m
//  Algorhythm
//
//  Created by Kristin Hunt on 9/3/15.
//  Copyright (c) 2015 Krispy. All rights reserved.
//

#import "Playlist.h"
#import "MusicLibrary.h"

@implementation Playlist

- (instancetype)initWithIndex: (NSUInteger)index {
  self = [super init];
  if (self) {
    MusicLibrary *musicLibrary = [[MusicLibrary alloc]init];
    NSArray *library = musicLibrary.library;
    
    NSDictionary *playlistDictonary = library[index];
    
    _playlistTitle = [playlistDictonary objectForKey:kTitle];
    _playlistDescription = [playlistDictonary objectForKey:kDescription];
    
    NSString *iconName = [playlistDictonary objectForKey:kIcon];
    _playlistIcon = [UIImage imageNamed:iconName];
    
    NSString *largeIconName = [playlistDictonary objectForKey:kLargeIcon];
    _playlistLargeIcon = [UIImage imageNamed:largeIconName];
    
    _playlistArtists = [NSArray arrayWithArray:[playlistDictonary objectForKey:kArtists]];
    
    NSDictionary *colorDictionary = [playlistDictonary objectForKey:kBackgroundColor];
    _backgroundColor = [self rgbColorFromDictionary:colorDictionary];
    
  }

  return self;

}

- (UIColor *)rgbColorFromDictionary: (NSDictionary *)colorDictionary {
  CGFloat red = [[colorDictionary objectForKey:@"red"] doubleValue];
  CGFloat green = [[colorDictionary objectForKey:@"green"] doubleValue];
  CGFloat blue = [[colorDictionary objectForKey:@"blue"] doubleValue];
  CGFloat alpha = [[colorDictionary objectForKey:@"alpha"] doubleValue];
  
  return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];

}

@end
