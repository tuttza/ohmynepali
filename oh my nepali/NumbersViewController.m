//
//  NumbersViewController.m
//  oh my nepali
//
//  Created by zach on 9/30/16.
//  Copyright © 2016 zach. All rights reserved.
//

#import "NumbersViewController.h"
#import "OMNNumbers.h"

@interface NumbersViewController ()
@property OMNNumbers *omnNumbers;

@end

@implementation NumbersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Round corners of view controller
    self.view.layer.cornerRadius = 6;
    
    _omnNumbers = [OMNNumbers new];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_omnNumbers.englishOrdinalOneToTen count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *tableIdentity = @"identityOne";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableIdentity];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableIdentity];
    }
    
    cell.textLabel.text = [_omnNumbers.devanagariOrdinalOneToTen objectAtIndex:indexPath.row];
    
    return cell;
}
@end
