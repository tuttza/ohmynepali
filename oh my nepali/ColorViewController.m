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

    
    // Tap gesture for playing audio on color picker
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
            
            [_color playAudio:@"Green" pickerViewRow:selectedRow matchingIndex:0];
            [_color playAudio:@"Red" pickerViewRow:selectedRow matchingIndex:1];
            [_color playAudio:@"Blue" pickerViewRow:selectedRow matchingIndex:2];
            [_color playAudio:@"Brown" pickerViewRow:selectedRow matchingIndex:3];
            [_color playAudio:@"Yellow" pickerViewRow:selectedRow matchingIndex:4];
            [_color playAudio:@"Purple" pickerViewRow:selectedRow matchingIndex:5];
            [_color playAudio:@"Black" pickerViewRow:selectedRow matchingIndex:6];
            [_color playAudio:@"White" pickerViewRow:selectedRow matchingIndex:7];
            [_color playAudio:@"Orange" pickerViewRow:selectedRow matchingIndex:8];
            [_color playAudio:@"Pink" pickerViewRow:selectedRow matchingIndex:9];
            [_color playAudio:@"Grey" pickerViewRow:selectedRow matchingIndex:10];
            [_color playAudio:@"Crimson" pickerViewRow:selectedRow matchingIndex:11];
            
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
    
    if (row == 0) {
        [UIView animateWithDuration:1.2f animations:^{
            [_devanagariLabel setAlpha:1.0f];
            [_nepaliLabel setAlpha:1.0f];
            _colorBox.backgroundColor = [UIColor colorWithRed:0.35 green:1.00 blue:0.08 alpha:1.0];
            [_color displayWord:_color.nepaliColors[0] :_color.devanagariColors[0] :_nepaliLabel :_devanagariLabel :_blackText];
            
        }];
        
    } else if (row == 1) {
        // Display Red
        [UIView animateWithDuration:1.2f animations:^{
            [_devanagariLabel setAlpha:1.0f];
            [_nepaliLabel setAlpha:1.0f];
            
            _colorBox.backgroundColor = [UIColor colorWithRed:0.82 green:0.00 blue:0.00 alpha:1.0];
            [_color displayWord:_color.nepaliColors[1] :_color.devanagariColors[1] :_nepaliLabel :_devanagariLabel :_blackText];
            
        }];

    } else if (row == 2) {
        // Display Blue
        [UIView animateWithDuration:1.2f animations:^{
            [_devanagariLabel setAlpha:1.0f];
            [_nepaliLabel setAlpha:1.0f];
            
            _colorBox.backgroundColor = [UIColor colorWithRed:0.01 green:0.33 blue:0.64 alpha:1.0];
            [_color displayWord:_color.nepaliColors[2] :_color.devanagariColors[2] :_nepaliLabel :_devanagariLabel :_whiteText];
            
        }];
    } else if (row == 3) {
        // Display Brown
        [UIView animateWithDuration:1.2f animations:^{
            [_devanagariLabel setAlpha:1.0f];
            [_nepaliLabel setAlpha:1.0f];
            
            _colorBox.backgroundColor = [UIColor brownColor];
            [_color displayWord:_color.nepaliColors[3] :_color.devanagariColors[3] :_nepaliLabel :_devanagariLabel :_blackText];
            
        }];
    } else if (row == 4) {
        // Display yellow
        [UIView animateWithDuration:1.2f animations:^{
            [_devanagariLabel setAlpha:1.0f];
            [_nepaliLabel setAlpha:1.0f];
            
            _colorBox.backgroundColor = [UIColor colorWithRed:0.98 green:0.95 blue:0.24 alpha:1.0];
            [_color displayWord:_color.nepaliColors[4] :_color.devanagariColors[4] :_nepaliLabel :_devanagariLabel :_blackText];
            
        }];
    } else if (row == 5) {
        // Display Purlple
        [UIView animateWithDuration:1.2f animations:^{
            [_devanagariLabel setAlpha:1.0f];
            [_nepaliLabel setAlpha:1.0f];
            
            _colorBox.backgroundColor = [UIColor colorWithRed:0.58 green:0.22 blue:0.93 alpha:1.0];
            [_color displayWord:_color.nepaliColors[5] :_color.devanagariColors[5] :_nepaliLabel :_devanagariLabel :_whiteText];
        }];
    } else if (row == 6) {
        [UIView animateWithDuration:1.2f animations:^{
            [_devanagariLabel setAlpha:1.0f];
            [_nepaliLabel setAlpha:1.0f];
            
            _colorBox.backgroundColor = [UIColor colorWithRed:0.13 green:0.14 blue:0.14 alpha:1.0];
            [_color displayWord:_color.nepaliColors[6] :_color.devanagariColors[6] :_nepaliLabel :_devanagariLabel :_whiteText];
        }];
    
    } else if (row == 7) {
        // Display White
        [UIView animateWithDuration:1.2f animations:^{
            [_devanagariLabel setAlpha:1.0f];
            [_nepaliLabel setAlpha:1.0f];
            
            _colorBox.backgroundColor = [UIColor colorWithRed:1.00 green:0.99 blue:1.00 alpha:1.0];
            [_color displayWord:_color.nepaliColors[7] :_color.devanagariColors[7] :_nepaliLabel :_devanagariLabel :_blackText];
        }];
        
    } else if (row == 8) {
        // Display orange
        [UIView animateWithDuration:1.2f animations:^{
            [_devanagariLabel setAlpha:1.0f];
            [_nepaliLabel setAlpha:1.0f];
            
            _colorBox.backgroundColor = [UIColor colorWithRed:0.96 green:0.32 blue:0.10 alpha:1.0];
            [_color displayWord:_color.nepaliColors[8] :_color.devanagariColors[8] :_nepaliLabel :_devanagariLabel :_whiteText];
        }];
        
    } else if (row == 9) {
        // Display Pink
        [UIView animateWithDuration:1.2f animations:^{
            [_devanagariLabel setAlpha:1.0f];
            [_nepaliLabel setAlpha:1.0f];
            
            _colorBox.backgroundColor = [UIColor colorWithRed:0.92 green:0.32 blue:0.44 alpha:1.0];
            [_color displayWord:_color.nepaliColors[9] :_color.devanagariColors[9] :_nepaliLabel :_devanagariLabel :_whiteText];
        }];
        
    } else if (row == 10) {
        // Display Grey
        [UIView animateWithDuration:1.2f animations:^{
            [_devanagariLabel setAlpha:1.0f];
            [_nepaliLabel setAlpha:1.0f];
            
            _colorBox.backgroundColor = [UIColor colorWithRed:0.60 green:0.63 blue:0.66 alpha:1.0];
            [_color displayWord:_color.nepaliColors[10] :_color.devanagariColors[10] :_nepaliLabel :_devanagariLabel :_blackText];

        }];
        
    } else if (row == 11) {
        // Display Crimson
        [UIView animateWithDuration:1.2f animations:^{
            [_devanagariLabel setAlpha:1.0f];
            [_nepaliLabel setAlpha:1.0f];
            
            _colorBox.backgroundColor = [UIColor colorWithRed:0.58 green:0.09 blue:0.13 alpha:1.0];
            [_color displayWord:_color.nepaliColors[11] :_color.devanagariColors[11] :_nepaliLabel :_devanagariLabel :_whiteText];
        }];
        
    } else {
        NSLog(@"Nothing to display!");
    }
}

@end
