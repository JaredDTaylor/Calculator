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
-(NSInteger) getInteger: (UITextField *)txt{
    NSString* number1 = [txt text];
    NSInteger integer1 = [number1 integerValue];
    return integer1;
}
-(bool) isValid: (NSString *) s{
    NSCharacterSet* alphaNums = [NSCharacterSet decimalDigitCharacterSet];
    NSCharacterSet* inStringSet = [NSCharacterSet characterSetWithCharactersInString: s];
    return [alphaNums isSupersetOfSet:inStringSet];
    
}


- (IBAction)click_Add:(id)sender {
    if ([self isValid: [_txtNumber1 text]] && [self isValid: [_txtNumber2 text]]){
        NSInteger integer1 = [self getInteger: [self txtNumber1]];
        NSInteger integer2 = [self getInteger: [self txtNumber2]];
        NSInteger answer = integer1 + integer2;
        NSString * answerString = [NSString stringWithFormat: @"%li", (long)answer];
        [[self lblAnswer] setText: answerString];
    }else{
        [[self lblAnswer] setText: @"Invalid Entry"];
    }
}
- (IBAction)click_Subtract:(id)sender {
    if ([self isValid: [_txtNumber1 text]] && [self isValid: [_txtNumber2 text]]){
        NSInteger integer1 = [self getInteger: [self txtNumber1]];
        NSInteger integer2 = [self getInteger: [self txtNumber2]];
        NSInteger answer = integer1 - integer2;
        NSString * answerString = [NSString stringWithFormat: @"%li", (long)answer];
        [[self lblAnswer] setText: answerString];
    }else{
        [[self lblAnswer] setText: @"Invalid Entry"];
    }
}
- (IBAction)click_Multiply:(id)sender {
    if ([self isValid: [_txtNumber1 text]] && [self isValid: [_txtNumber2 text]]){
        NSInteger integer1 = [self getInteger: [self txtNumber1]];
        NSInteger integer2 = [self getInteger: [self txtNumber2]];
        NSInteger answer = integer1 * integer2;
        NSString * answerString = [NSString stringWithFormat: @"%li", (long)answer];
        [[self lblAnswer] setText: answerString];
    }else{
        [[self lblAnswer] setText: @"Invalid Entry"];
    }
}
- (IBAction)click_Divide:(id)sender {
    if ([self isValid: [_txtNumber1 text]] && [self isValid: [_txtNumber2 text]]){
        NSInteger integer1 = [self getInteger: [self txtNumber1]];
        NSInteger integer2 = [self getInteger: [self txtNumber2]];
        NSInteger answer = integer1 / integer2;
        NSString * answerString = [NSString stringWithFormat: @"%li", (long)answer];
        [[self lblAnswer] setText: answerString];
    }else{
        [[self lblAnswer] setText: @"Invalid Entry"];
    }
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
