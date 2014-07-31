//
//  IGViewController.m
//  Testable
//
//  Created by Indiegogo Pair on 7/31/14.
//  Copyright (c) 2014 Indiegogo. All rights reserved.
//

@import UIKit;

@interface IGViewController : UIViewController

@end


@interface IGViewController ()

@end

@implementation IGViewController

- (IBAction)tapButton:(UIButton *)sender {
    [sender setTitle:@"Thank you!" forState:UIControlStateNormal];
}

@end
