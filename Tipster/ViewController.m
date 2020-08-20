//
//  ViewController.m
//  Tipster
//
//  Created by Federico Baron on 8/14/20.
//  Copyright © 2020 Federico Baron. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

// When you tap anywhere it hides the keyboard
- (IBAction)onTap:(id)sender {
    //NSLog(@"Hello");
    [self.view endEditing:YES];
}

- (IBAction)onEdit:(id)sender {
    
    double bill = [self.billField.text doubleValue];
    
    NSArray *percentages = @[@(0.18), @(0.2), @(0.22)];
    
    
    double tipPercentage = [percentages[self.tipControl.selectedSegmentIndex]
                            doubleValue];
    
    // calculate tip 
    double tip = tipPercentage * bill;
    double total = bill + tip;
    
    
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", total];
}

@end
