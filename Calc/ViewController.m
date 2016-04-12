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

float leftSideNumber = 0;
float rightSideNumber = 0;
bool operatorPressed = false;
bool add = false;
bool sub = false;
bool multi = false;
bool divide = false;
float result = 0;


#pragma mark - Operator Buttons

- (IBAction)clearButtonPressed:(id)button {
    NSLog(@"Clear Pressed");
    _currentNumberlabel.text = [NSString stringWithFormat:@""];
}

- (IBAction)equalsButtonPressed:(id)button {
    NSLog(@"Equal Pressed");
    
    if (add) {
        result = leftSideNumber+rightSideNumber;
    } else if (sub){
        result = leftSideNumber-rightSideNumber;
    } else if (multi) {
        result =leftSideNumber*rightSideNumber;
    } else if (divide){
        result = leftSideNumber/rightSideNumber;
    }
    //int result = leftSideNumber+rightSideNumber;
    _currentNumberlabel.text = [NSString stringWithFormat:@"%0f",result];
}


- (IBAction)plusButtonPressed:(id)button {
    NSLog(@"Plus Pressed");
    operatorPressed = true;
    add = true;
    sub = false;
    multi = false;
    divide = false;
    _currentNumberlabel.text = @"";
}

- (IBAction)subButtonPressed:(id)button {
    NSLog(@"sub Pressed");
    operatorPressed = true;
    add = false;
    sub = true;
    multi = false;
    divide = false;
    _currentNumberlabel.text = @"";
}

- (IBAction)multiButtonPressed:(id)button {
    NSLog(@"multi Pressed");
    operatorPressed = true;
    add = false;
    sub = false;
    multi = true;
    divide = false;
    _currentNumberlabel.text = @"";
}

- (IBAction)divideButtonPressed:(id)button {
    NSLog(@"divide Pressed");
    operatorPressed = true;
    add = false;
    sub = false;
    multi = false;
    divide = true;
    _currentNumberlabel.text = @"";
}

# pragma mark - Number Buttons

- (IBAction)oneButtonPressed:(id)button {
    NSLog(@"One Pressed");
    _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"1"];
    if (operatorPressed) {
        rightSideNumber = [_currentNumberlabel.text floatValue];
    } else {
        leftSideNumber = [_currentNumberlabel.text floatValue];
    }
}

- (IBAction)twoButtonPressed:(id)button {
    NSLog(@"One Pressed");
    _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"2"];
    if (operatorPressed) {
        rightSideNumber = [_currentNumberlabel.text floatValue];
    } else {
        leftSideNumber = [_currentNumberlabel.text floatValue];
    }
}

- (IBAction)threeButtonPressed:(id)button {
    NSLog(@"One Pressed");
    _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"3"];
    if (operatorPressed) {
        rightSideNumber = [_currentNumberlabel.text floatValue];
    } else {
        leftSideNumber = [_currentNumberlabel.text floatValue];
    }
}
- (IBAction)fourButtonPressed:(id)button {
    NSLog(@"One Pressed");
    _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"4"];
    if (operatorPressed) {
        rightSideNumber = [_currentNumberlabel.text floatValue];
    } else {
        leftSideNumber = [_currentNumberlabel.text floatValue];
    }
}
- (IBAction)fiveButtonPressed:(id)button {
    NSLog(@"One Pressed");
    _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"5"];
    if (operatorPressed) {
        rightSideNumber = [_currentNumberlabel.text floatValue];
    } else {
        leftSideNumber = [_currentNumberlabel.text floatValue];
    }
}
- (IBAction)sixButtonPressed:(id)button {
    NSLog(@"One Pressed");
    _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"6"];
    if (operatorPressed) {
        rightSideNumber = [_currentNumberlabel.text floatValue];
    } else {
        leftSideNumber = [_currentNumberlabel.text floatValue];
    }
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
