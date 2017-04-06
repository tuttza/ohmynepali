//
//  ViewController.m
//  oh my nepali
//
//  Created by zach on 9/23/16.
//  Copyright © 2016 zach. All rights reserved.
//

#import "ColorViewController.h"
#import "OMNColor.h"

@interface ColorViewController()

@property (weak, nonatomic) IBOutlet UIPickerView *colorPicker;
@property (weak, nonatomic) IBOutlet UIView *colorBox;

@property (weak, nonatomic) IBOutlet UILabel *devanagariLabel;
@property (weak, nonatomic) IBOutlet UILabel *nepaliLabel;

@property OMNColor *color;
@property UIColor *blackText;
@property UIColor *whiteText;

@end

@implementation ColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    // Round corners of view controller
    self.view.layer.cornerRadius = 6;
    
    // Customize UIView <colorBox>
    _colorBox.layer.cornerRadius = 15;
    _colorBox.layer.shadowOpacity = 0.2;
    _colorBox.layer.shadowRadius = 6.0;

    // Font Colors
    _blackText = [UIColor colorWithRed:0.11 green:0.11 blue:0.12 alpha:1.0];
    _whiteText = [UIColor colorWithRed:0.98 green:1.00 blue:1.00 alpha:1.0];
    
    // Connect Data to UIPickerView
    _colorPicker.delegate = self;
    _colorPicker.dataSource = (id)self;
    
    _color = [OMNColor new];
    
    // Default UIView _colorBox to Green
    _colorBox.backgroundColor = [UIColor colorWithRed:0.35 green:1.00 blue:0.08 alpha:1.0];
    [_color displayWord:_color.nepaliColors[0] :_color.devanagariColors[0] :_nepaliLabel :_devanagariLabel :_blackText];

    
    UITapGestureRecognizer *colorItemTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tappedToSelectRow:)];
    [colorItemTap setNumberOfTapsRequired:1];
    [colorItemTap setNumberOfTouchesRequired:1];
    
    colorItemTap.delegate = self;
    [self.colorPicker addGestureRecognizer:colorItemTap];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// Tap Gesture for color audio per picker row
- (IBAction)tappedToSelectRow:(UITapGestureRecognizer *)tapRecognizer
{
    if (tapRecognizer.state == UIGestureRecognizerStateEnded) {
        
        CGFloat rowHeight = [self.colorPicker rowSizeForComponent:0].height;
       
        CGRect selectedRowFrame = CGRectInset(self.colorPicker.bounds, 0.0, (CGRectGetHeight(self.colorPicker.frame) - rowHeight) / 2.0 );
        
        BOOL userTappedOnSelectedRow = (CGRectContainsPoint(selectedRowFrame, [tapRecognizer locationInView:self.colorPicker]));
        
        if (userTappedOnSelectedRow) {
            NSInteger selectedRow = [self.colorPicker selectedRowInComponent:0];
            
            if (selectedRow == 0) {
                NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"Green" ofType:@"m4a"];
                SystemSoundID soundID;
                AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath: soundPath], &soundID);
                AudioServicesPlaySystemSound (soundID);
            } else if (selectedRow == 1) {
                NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"Red" ofType:@"m4a"];
                SystemSoundID soundID;
                AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath: soundPath], &soundID);
                AudioServicesPlaySystemSound (soundID);
            } else if (selectedRow == 2) {
                NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"Blue" ofType:@"m4a"];
                SystemSoundID soundID;
                AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath: soundPath], &soundID);
                AudioServicesPlaySystemSound (soundID);
            } else if (selectedRow == 3) {
                NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"Brown" ofType:@"m4a"];
                SystemSoundID soundID;
                AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath: soundPath], &soundID);
                AudioServicesPlaySystemSound (soundID);
            } else if (selectedRow == 4) {
                NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"Yellow" ofType:@"m4a"];
                SystemSoundID soundID;
                AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath: soundPath], &soundID);
                AudioServicesPlaySystemSound (soundID);
            } else if (selectedRow == 5) {
                NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"Purple" ofType:@"m4a"];
                SystemSoundID soundID;
                AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath: soundPath], &soundID);
                AudioServicesPlaySystemSound (soundID);
            } else if (selectedRow == 6) {
                NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"Black" ofType:@"m4a"];
                SystemSoundID soundID;
                AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath: soundPath], &soundID);
                AudioServicesPlaySystemSound (soundID);
            } else if (selectedRow == 7) {
                NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"White" ofType:@"m4a"];
                SystemSoundID soundID;
                AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath: soundPath], &soundID);
                AudioServicesPlaySystemSound (soundID);
            } else if (selectedRow == 8) {
                NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"Orange" ofType:@"m4a"];
                SystemSoundID soundID;
                AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath: soundPath], &soundID);
                AudioServicesPlaySystemSound (soundID);
            } else if (selectedRow == 9) {
                NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"Pink" ofType:@"m4a"];
                SystemSoundID soundID;
                AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath: soundPath], &soundID);
                AudioServicesPlaySystemSound (soundID);
            } else if (selectedRow == 10) {
                NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"Grey" ofType:@"m4a"];
                SystemSoundID soundID;
                AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath: soundPath], &soundID);
                AudioServicesPlaySystemSound (soundID);
            } else if (selectedRow == 11) {
                NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"Crimson" ofType:@"m4a"];
                SystemSoundID soundID;
                AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath: soundPath], &soundID);
                AudioServicesPlaySystemSound (soundID);
            } else {
                NSLog(@"NO MORE SELECTIONS");
            }

            
            [self pickerView:self.colorPicker didSelectRow:selectedRow inComponent:0];
        }
    }
}


- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}


// UIPickerView Methods:

- (int)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    // Number Columns of data:
    return 1;
}

- (NSUInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    // Number of rows to display:
    return _color.englishColors.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    //The data to return for the row and component (column) that's being passed in
    return _color.englishColors[row];
}

// Change Font for each pickerView row label
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view {
    
    UILabel* pickerRowText = (UILabel*)view;
    if (!pickerRowText) {
        pickerRowText = [[UILabel alloc] init];
        [pickerRowText setFont:[UIFont fontWithName:@"Raleway-Thin" size:28]];
        [pickerRowText setTextAlignment:NSTextAlignmentCenter];
        pickerRowText.numberOfLines = 0;
    }
    
    pickerRowText.text = [_color.englishColors objectAtIndex:row];
    
    return pickerRowText;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    // This method is triggered whenever the user makes a change to the picker selection.
    // The parameter named row and component represents what was selected.
    switch (row) {
        case 0:
            // Green
            _colorBox.backgroundColor = [UIColor colorWithRed:0.35 green:1.00 blue:0.08 alpha:1.0];
            [_color displayWord:_color.nepaliColors[0] :_color.devanagariColors[0] :_nepaliLabel :_devanagariLabel :_blackText];
            
            break;
        case 1:
            // Red
            _colorBox.backgroundColor = [UIColor colorWithRed:0.82 green:0.00 blue:0.00 alpha:1.0];
            [_color displayWord:_color.nepaliColors[1] :_color.devanagariColors[1] :_nepaliLabel :_devanagariLabel :_blackText];

            break;
        case 2:
            // Blue
            _colorBox.backgroundColor = [UIColor colorWithRed:0.01 green:0.33 blue:0.64 alpha:1.0];
            [_color displayWord:_color.nepaliColors[2] :_color.devanagariColors[2] :_nepaliLabel :_devanagariLabel :_whiteText];
            
            break;
        case 3:
            // Brown
            _colorBox.backgroundColor = [UIColor brownColor];
            [_color displayWord:_color.nepaliColors[3] :_color.devanagariColors[3] :_nepaliLabel :_devanagariLabel :_blackText];

            break;
        case 4:
            // Yellow
            _colorBox.backgroundColor = [UIColor colorWithRed:0.98 green:0.95 blue:0.24 alpha:1.0];
            [_color displayWord:_color.nepaliColors[4] :_color.devanagariColors[4] :_nepaliLabel :_devanagariLabel :_blackText];

            break;
        case 5:
            // Purple
            _colorBox.backgroundColor = [UIColor colorWithRed:0.58 green:0.22 blue:0.93 alpha:1.0];
            [_color displayWord:_color.nepaliColors[5] :_color.devanagariColors[5] :_nepaliLabel :_devanagariLabel :_whiteText];

            break;
        case 6:
            // Black
            _colorBox.backgroundColor = [UIColor colorWithRed:0.13 green:0.14 blue:0.14 alpha:1.0];
            [_color displayWord:_color.nepaliColors[6] :_color.devanagariColors[6] :_nepaliLabel :_devanagariLabel :_whiteText];
            
            break;
        case 7:
            // White
            _colorBox.backgroundColor = [UIColor colorWithRed:1.00 green:0.99 blue:1.00 alpha:1.0];
            [_color displayWord:_color.nepaliColors[7] :_color.devanagariColors[7] :_nepaliLabel :_devanagariLabel :_blackText];

            break;
        case 8:
            // Orange
            _colorBox.backgroundColor = [UIColor colorWithRed:0.96 green:0.32 blue:0.10 alpha:1.0];
            [_color displayWord:_color.nepaliColors[8] :_color.devanagariColors[8] :_nepaliLabel :_devanagariLabel :_whiteText];

            break;
        case 9:
            // Pink
            _colorBox.backgroundColor = [UIColor colorWithRed:0.92 green:0.32 blue:0.44 alpha:1.0];
            [_color displayWord:_color.nepaliColors[9] :_color.devanagariColors[9] :_nepaliLabel :_devanagariLabel :_whiteText];
            
            break;
        case 10:
            // Grey
            _colorBox.backgroundColor = [UIColor colorWithRed:0.60 green:0.63 blue:0.66 alpha:1.0];
            [_color displayWord:_color.nepaliColors[10] :_color.devanagariColors[10] :_nepaliLabel :_devanagariLabel :_blackText];

            break;
        case 11:
            // Crimson
            _colorBox.backgroundColor = [UIColor colorWithRed:0.58 green:0.09 blue:0.13 alpha:1.0];
            [_color displayWord:_color.nepaliColors[11] :_color.devanagariColors[11] :_nepaliLabel :_devanagariLabel :_whiteText];
            
            break;
            
        default:
            break;
    }
}

@end
