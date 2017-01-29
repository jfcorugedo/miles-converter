//
//  ViewController.m
//  BasicPrograming
//
//  Created by Juan Fernandez-Corugedo Igual on 11/01/2017.
//  Copyright © 2017 Juan Fernandez-Corugedo Igual. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

static const float MILES_RATE = 1.609344;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)convert:(UIButton *)sender {
    
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setNumberStyle:NSNumberFormatterDecimalStyle];
    [formatter setMaximumFractionDigits:6];
    
    float result = [[formatter numberFromString:self.km.text] floatValue] / MILES_RATE;
    
    NSLog(@"result: %f", result);
    NSLog(@"result: %@", [[NSNumber numberWithFloat:result] stringValue]);
    
    self.miles.text = [formatter stringFromNumber:[NSNumber numberWithFloat:result]];
    
}
@end
