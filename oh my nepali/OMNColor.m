//
//  Color.m
//  oh my nepali
//
//  Created by zach on 9/23/16.
//  Copyright © 2016 zach. All rights reserved.
//

#import "OMNColor.h"

@implementation OMNColor

- (id)init {
    
    self = [super init];
    
    if (self != nil) {
        // initialization
        
        // Load colors plist file:
        NSString *path = [[NSBundle mainBundle] pathForResource:@"colors" ofType:@"plist"];
        NSDictionary *colorWords = [[NSDictionary dictionary] initWithContentsOfFile:path];
        
        self.englishColors = colorWords[@"englishColors"];
        self.nepaliColors = colorWords[@"nepaliColors"];
        self.devanagariColors = colorWords[@"devanagariColors"];
        
    }
    return self;
}

- (void)displayWord:(NSString *)nepaliWord :(NSString *)devanagariWord :(UILabel *)nepaliLabel :(UILabel *)devanagariLabel :(UIColor *)wordColor {
    
    devanagariLabel.text = devanagariWord;
    devanagariLabel.textColor = wordColor;
    devanagariLabel.font = [UIFont fontWithName:@"Rajdhani-light" size:68];
    
    nepaliLabel.text = nepaliWord;
    nepaliLabel.textColor = wordColor;
    nepaliLabel.font = [UIFont fontWithName:@"Rajdhani-Bold" size:60];
    
}


- (void)playAudio:(NSString *)pathToAudioFile pickerViewRow:(NSInteger )row matchingIndex:(NSInteger )arrayIndex {
    SystemSoundID soundID;
    
    if (row == arrayIndex) {
        NSString *soundPath = [[NSBundle mainBundle] pathForResource:pathToAudioFile ofType:@"m4a"];
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath: soundPath], &soundID);
        AudioServicesPlaySystemSound (soundID);
    }
}

@end
