//
//  Color.h
//  oh my nepali
//
//  Created by zach on 9/23/16.
//  Copyright © 2016 zach. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface OMNColor : NSObject

@property (atomic, retain) NSArray *englishColors;
@property (atomic, retain) NSArray *nepaliColors;
@property (atomic, retain) NSArray *devanagariColors;


- (id)init;

- (void)displayWord :(NSString *)nepaliWord :(NSString *)devanagariWord :(UILabel *)nepaliLabel :(UILabel *)devanagariLabel :(UIColor *)wordColor;

@end
