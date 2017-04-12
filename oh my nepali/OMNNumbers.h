//
//  OMNNumbers.h
//  oh my nepali
//
//  Created by Tuttle, Zachary on 4/11/17.
//  Copyright © 2017 zach. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OMNNumbers : NSObject
@property (atomic, retain) NSArray *englishNumbersOneToTen;
@property (atomic, retain) NSArray *nepaliNumbersOneToTen;
@property (atomic, retain) NSArray *devanagariNumbersOneToTen;

@property(atomic, retain) NSArray *englishOrdinalOneToTen;
@property(atomic, retain) NSArray *nepaliOrdinalOneToTen;
@property(atomic, retain) NSArray *devanagariOrdinalOneToTen;


- (id)init;
@end
