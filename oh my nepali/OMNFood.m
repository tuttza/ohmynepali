//
//  OMNFood.m
//  oh my nepali
//
//  Created by zach on 10/17/16.
//  Copyright © 2016 zach. All rights reserved.
//

#import "OMNFood.h"

@implementation OMNFood


- (id)init {
    
    self = [super init];
    
    if (self != nil) {
        // initializations go here.
        
        // Load food plist file:
        NSString *path = [[NSBundle mainBundle] pathForResource:@"foods" ofType:@"plist"];
        NSDictionary *foodWords = [[NSDictionary dictionary] initWithContentsOfFile:path];
        
        NSLog(@"%@", foodWords);
        
    }
    return self;
}

@end
