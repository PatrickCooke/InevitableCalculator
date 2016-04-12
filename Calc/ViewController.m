//
//  ViewController.m
//  Calc
//
//  Created by Patrick Cooke on 4/12/16.
//  Copyright © 2016 Patrick Cooke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic, weak) IBOutlet UILabel     *currentNumberlabel;

@end

@implementation ViewController

#pragma mark - Global Variables

int leftSideNumber = 0;
int rightSideNumber = 0;
bool operatorPressed = false;

#pragma mark - buttons

- (IBAction)clearButtonPressed:(id)button {
    NSLog(@"Clear Pressed");
    _currentNumberlabel.text = [NSString stringWithFormat:@"clear"];
}

- (IBAction)equalsButtonPressed:(id)button {
    NSLog(@"Equal Pressed");
    int result = leftSideNumber+rightSideNumber;
    _currentNumberlabel.text = [NSString stringWithFormat:@"%i",result];
}

- (IBAction)oneButtonPressed:(id)button {
    NSLog(@"One Pressed");
    _currentNumberlabel.text = @"1";
    if (operatorPressed) {
        rightSideNumber = 1;
    } else {
        leftSideNumber = 1;
    }
}

- (IBAction)plusButtonPressed:(id)button {
    NSLog(@"Plus Pressed");
    operatorPressed = true;
}









#pragma mark - life cycle stages
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
