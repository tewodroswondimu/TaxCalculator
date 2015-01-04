//
//  ViewController.m
//  TaxCalculator
//
//  Created by Tewodros Wondimu on 1/3/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property double caTax, chiTax, nyTax;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.caTax = 7.5;
    self.chiTax = 9.25;
    self.nyTax = 4.5;
}

- (IBAction)onCalculateButtonTapped:(id)sender {
    float tax = 0.0;
    switch (self.segmentedControl.selectedSegmentIndex) {
        case 0:
            tax = self.caTax;
            break;

        case 1:
            tax = self.chiTax;
            break;

        case 2:
            tax = self.nyTax;
            break;
        default:
            break;
    }
    int price = [self.priceTextField.text intValue];
    float result = price * tax;

    self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
