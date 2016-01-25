//
//  ViewController.m
//  BillSplitter
//
//  Created by Graeme Harrison on 2016-01-24.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *billAmountText;
@property (strong, nonatomic) IBOutlet UISlider *peopleSlider;
@property (strong, nonatomic) IBOutlet UILabel *amountPerPerson;
@property (strong, nonatomic) IBOutlet UILabel *numberOfPeople;
@property (nonatomic, assign) CGFloat num;
@property (nonatomic, assign) CGFloat amount;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.billAmountText becomeFirstResponder];
    self.num = 2.00;
    
}
- (IBAction)calculateSplitAmount:(UIButton *)sender {
    CGFloat billAmount = [self.billAmountText.text integerValue];
    self.amount = billAmount / self.num;
    self.amountPerPerson.text = [NSString stringWithFormat:@"Amount Per Person: $%.2f", self.amount];
}

- (IBAction)numberOfPeople:(UISlider *)sender {
    self.num = sender.value;
    self.numberOfPeople.text = [NSString stringWithFormat:@"%0.f", self.num];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
