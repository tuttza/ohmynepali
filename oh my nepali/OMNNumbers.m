//
//  OMNNumbers.m
//  oh my nepali
//
//  Created by Tuttle, Zachary on 4/11/17.
//  Copyright © 2017 zach. All rights reserved.
//

#import "OMNNumbers.h"

@implementation OMNNumbers

- (id)init {
    
    self = [super init];
    
    if (self != nil) {
        // initialization
        
        // Load numbers.plist file:
        NSString *path = [[NSBundle mainBundle] pathForResource:@"numbers" ofType:@"plist"];
        NSDictionary *numbers = [[NSDictionary dictionary] initWithContentsOfFile:path];
        
        
        self.englishNumbersOneToTen = numbers[@"englishNumbersOneToTen"];
        self.nepaliNumbersOneToTen = numbers[@"nepaliNumbersOneToTen"];
        self.devanagariNumbersOneToTen = numbers[@"devanagariNumbersOneToTen"];
        
        self.englishOrdinalOneToTen = numbers[@"englishOrdinalOneToTen"];
        self.nepaliOrdinalOneToTen = numbers[@"nepaliOrdinalOneToTen"];
        self.devanagariOrdinalOneToTen = numbers[@"devanagariOrdinalOneToTen"];
        
    }
    return self;
}

@end
