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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)calculateSplitAmount:(UIButton *)sender {
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
