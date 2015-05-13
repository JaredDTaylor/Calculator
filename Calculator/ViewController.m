//
//  ViewController.m
//  Calculator
//
//  Created by Jared Taylor on 5/13/15.
//  Copyright (c) 2015 Jared Taylor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *txtNumber1;

@property (weak, nonatomic) IBOutlet UITextField *txtNumber2;

@property (weak, nonatomic) IBOutlet UILabel *lblAnswer;

@end

@implementation ViewController

- (IBAction)click_Add:(id)sender {
    NSString* number1 = [[self txtNumber1] text];
    NSInteger integer1 = [number1 integerValue];
    NSString* number2 = [[self txtNumber2] text];
    NSInteger integer2 = [number2 integerValue];
    NSInteger answer = integer1 + integer2;
    NSString * answerString = [NSString stringWithFormat: @"%li", (long)answer];
    [[self lblAnswer] setText: answerString];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
