//
//  ViewController.m
//  约束优先级
//
//  Created by Kinken_Yuen on 2018/11/4.
//  Copyright © 2018年 Kinken_Yuen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,assign)double leftValue;
@property(nonatomic,assign)double rightValue;

@property (weak, nonatomic) IBOutlet UILabel *leftLabel;
@property (weak, nonatomic) IBOutlet UILabel *rightLabel;

@property(nonatomic,assign)double bottomLeftValue;
@property(nonatomic,assign)double bottomRightValue;
@property (weak, nonatomic) IBOutlet UILabel *bottomLeftLabel;
@property (weak, nonatomic) IBOutlet UILabel *bottomRightLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (IBAction)leftStepper:(id)sender {
    UIStepper *stepper = (UIStepper *)sender;
    if (stepper.value > self.leftValue) {
        self.leftLabel.text = [self.leftLabel.text stringByAppendingString:@"内"];
    }else {
        self.leftLabel.text = [self.leftLabel.text substringToIndex:(self.leftLabel.text.length - 1)];
    }
    self.leftValue = stepper.value;
}

- (IBAction)rightStepper:(id)sender {
    UIStepper *stepper = (UIStepper *)sender;
    if (stepper.value > self.rightValue) {
        self.rightLabel.text = [self.rightLabel.text stringByAppendingString:@"容"];
    }else {
        self.rightLabel.text = [self.rightLabel.text substringToIndex:(self.rightLabel.text.length - 1)];
    }
    self.rightValue = stepper.value;
}

- (IBAction)bottomLeftStepper:(UIStepper *)sender {
    if (sender.value > self.bottomLeftValue) {
        self.bottomLeftLabel.text = [self.bottomLeftLabel.text stringByAppendingString:@"文"];
    }else {
        self.bottomLeftLabel.text = [self.bottomLeftLabel.text substringToIndex:(self.bottomLeftLabel.text.length - 1)];
    }
    self.bottomLeftValue = sender.value;
}

- (IBAction)bottomRightStepper:(UIStepper *)sender {
    if (sender.value > self.bottomRightValue) {
        self.bottomRightLabel.text = [self.bottomRightLabel.text stringByAppendingString:@"字"];
    }else {
        self.bottomRightLabel.text = [self.bottomRightLabel.text substringToIndex:(self.bottomRightLabel.text.length - 1)];
    }
    self.bottomRightValue = sender.value;
}

- (IBAction)setPriority:(UISwitch *)sender {
    if (sender.isOn) {
        [self.bottomRightLabel setContentCompressionResistancePriority:755 forAxis:UILayoutConstraintAxisHorizontal];
    }else {
        [self.bottomRightLabel setContentCompressionResistancePriority:745 forAxis:UILayoutConstraintAxisHorizontal];
    }
}


@end
