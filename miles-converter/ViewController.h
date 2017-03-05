//
//  ViewController.h
//  miles-converter
//
//  Created by Juan Fernandez-Corugedo Igual on 05/03/2017.
//  Copyright © 2017 Juan Fernandez-Corugedo Igual. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *km;
@property (strong, nonatomic) IBOutlet UITextField *miles;
- (IBAction)convert:(UIButton *)sender;


@end

