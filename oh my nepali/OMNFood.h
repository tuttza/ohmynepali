//
//  OMNFood.h
//  oh my nepali
//
//  Created by zach on 10/17/16.
//  Copyright © 2016 zach. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OMNFood : NSObject

@property (atomic, retain) NSArray *englishFoods;
@property (atomic, retain) NSArray *nepaliFoods;
@property (atomic, retain) NSArray *devanagariFoods;
@property (atomic, retain) NSArray *foodPhotos;


- (id)init;

@end
