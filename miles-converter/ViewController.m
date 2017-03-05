//
//  ViewController.m
//  miles-converter
//
//  Created by Juan Fernandez-Corugedo Igual on 05/03/2017.
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
    NSLog(@"Converting %@km to miles...", self.km.text);
    
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setNumberStyle:NSNumberFormatterDecimalStyle];
    [formatter setMaximumFractionDigits:3];
    
    float miles = [[formatter numberFromString:self.km.text] floatValue] / MILES_RATE;
    
    NSLog(@"Result: %f", miles);
    
    self.miles.text = [formatter stringFromNumber:[NSNumber numberWithFloat:miles]];
    
}
@end
