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
float extra1 = 0;
float extra2 = 0;
bool operatorPressed = false;
bool add = false;
bool sub = false;
bool multi = false;
bool divide = false;
bool equal = false;
float result = 0;


#pragma mark - Operator Buttons

- (IBAction)clearButtonPressed:(id)button {
    NSLog(@"Clear Pressed");
    _currentNumberlabel.text = [NSString stringWithFormat:@""];
    rightSideNumber = 0;
    leftSideNumber = 0;
    operatorPressed = false;
    add = false;
    sub = false;
    multi = false;
    divide = false;
}

- (IBAction)equalsButtonPressed:(id)button {
    NSLog(@"Equal Pressed");
    equal = true;
    if (add) {
        result = leftSideNumber+rightSideNumber;
    } else if (sub){
        result = leftSideNumber-rightSideNumber;
    } else if (multi) {
        result =leftSideNumber*rightSideNumber;
    } else if (divide){
        result = leftSideNumber/rightSideNumber;
    }
    _currentNumberlabel.text = [NSString stringWithFormat:@"%0f",result];
    leftSideNumber = result;
    operatorPressed = false;
    add = false;
    sub = false;
    multi = false;
    divide = false;
    equal = true;
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
    
- (IBAction)squareButtonPressed:(id)sender{
    extra1 = [_currentNumberlabel.text floatValue];
    extra2 = extra1 * extra1;
        _currentNumberlabel.text = [NSString stringWithFormat:@"%0f",extra2];
    if (operatorPressed) {
        rightSideNumber = [_currentNumberlabel.text floatValue];
    } else {
        leftSideNumber = [_currentNumberlabel.text floatValue];
    }
}

- (IBAction)rootButtonPressed:(id)sender{
    extra1 = [_currentNumberlabel.text floatValue];
    extra2 = sqrtf(extra1);
    _currentNumberlabel.text = [NSString stringWithFormat:@"%0f",extra2];
    if (operatorPressed) {
        rightSideNumber = [_currentNumberlabel.text floatValue];
    } else {
        leftSideNumber = [_currentNumberlabel.text floatValue];
    }
}

- (IBAction)percentButtonPressed:(id)sender{
    extra1 = [_currentNumberlabel.text floatValue];
    extra2 = extra1 / 100;
    _currentNumberlabel.text = [NSString stringWithFormat:@"%0f",extra2];
    if (operatorPressed) {
        rightSideNumber = [_currentNumberlabel.text floatValue];
    } else {
        leftSideNumber = [_currentNumberlabel.text floatValue];
    }
}

- (IBAction)negButtonPressed:(id)sender{
    extra1 = [_currentNumberlabel.text floatValue];
    extra2 = extra1 * -1;
    _currentNumberlabel.text = [NSString stringWithFormat:@"%0f",extra2];
    if (operatorPressed) {
        rightSideNumber = [_currentNumberlabel.text floatValue];
    } else {
        leftSideNumber = [_currentNumberlabel.text floatValue];
    }
}



# pragma mark - Number Buttons


- (IBAction)oneButtonPressed:(id)button {
    NSLog(@"One Pressed");
    if (equal) {
        _currentNumberlabel.text = [NSString stringWithFormat:@""];
        _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"1"];
        equal = false;
    } else {
        _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"1"];
    }
    if (operatorPressed) {
        rightSideNumber = [_currentNumberlabel.text floatValue];
    } else {
        leftSideNumber = [_currentNumberlabel.text floatValue];
    }
}

- (IBAction)twoButtonPressed:(id)button {
    NSLog(@"two Pressed");
    if (equal) {
        _currentNumberlabel.text = [NSString stringWithFormat:@""];
        _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"2"];
        equal = false;
    } else {
        _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"2"];
    }
    if (operatorPressed) {
        rightSideNumber = [_currentNumberlabel.text floatValue];
    } else {
        leftSideNumber = [_currentNumberlabel.text floatValue];
    }
}

- (IBAction)threeButtonPressed:(id)button {
    NSLog(@"three Pressed");
    if (equal) {
        _currentNumberlabel.text = [NSString stringWithFormat:@""];
        _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"3"];
        equal = false;
    } else {
        _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"3"];
    }

    if (operatorPressed) {
        rightSideNumber = [_currentNumberlabel.text floatValue];
    } else {
        leftSideNumber = [_currentNumberlabel.text floatValue];
    }
}
- (IBAction)fourButtonPressed:(id)button {
    NSLog(@"four Pressed");
    if (equal) {
        _currentNumberlabel.text = [NSString stringWithFormat:@""];
        _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"4"];
        equal = false;
    } else {
        _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"4"];
    }

    if (operatorPressed) {
        rightSideNumber = [_currentNumberlabel.text floatValue];
    } else {
        leftSideNumber = [_currentNumberlabel.text floatValue];
    }
}
- (IBAction)fiveButtonPressed:(id)button {
    NSLog(@"five Pressed");
    if (equal) {
        _currentNumberlabel.text = [NSString stringWithFormat:@""];
        _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"5"];
        equal = false;
    } else {
        _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"5"];
    }

    if (operatorPressed) {
        rightSideNumber = [_currentNumberlabel.text floatValue];
    } else {
        leftSideNumber = [_currentNumberlabel.text floatValue];
    }
}
- (IBAction)sixButtonPressed:(id)button {
    NSLog(@"six Pressed");
    if (equal) {
        _currentNumberlabel.text = [NSString stringWithFormat:@""];
        _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"6"];
        equal = false;
    } else {
        _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"6"];
    }

    if (operatorPressed) {
        rightSideNumber = [_currentNumberlabel.text floatValue];
    } else {
        leftSideNumber = [_currentNumberlabel.text floatValue];
    }
}

- (IBAction)sevenButtonPressed:(id)button {
    NSLog(@"seven Pressed");
    if (equal) {
        _currentNumberlabel.text = [NSString stringWithFormat:@""];
        _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"7"];
        equal = false;
    } else {
        _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"7"];
    }

    if (operatorPressed) {
        rightSideNumber = [_currentNumberlabel.text floatValue];
    } else {
        leftSideNumber = [_currentNumberlabel.text floatValue];
    }
}

- (IBAction)eightButtonPressed:(id)button {
    NSLog(@"eight Pressed");
    if (equal) {
        _currentNumberlabel.text = [NSString stringWithFormat:@""];
        _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"8"];
        equal = false;
    } else {
        _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"8"];
    }

    if (operatorPressed) {
        rightSideNumber = [_currentNumberlabel.text floatValue];
    } else {
        leftSideNumber = [_currentNumberlabel.text floatValue];
    }
}

- (IBAction)nineButtonPressed:(id)button {
    NSLog(@"nine Pressed");
    if (equal) {
        _currentNumberlabel.text = [NSString stringWithFormat:@""];
        _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"9"];
        equal = false;
    } else {
        _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"9"];
    }

    if (operatorPressed) {
        rightSideNumber = [_currentNumberlabel.text floatValue];
    } else {
        leftSideNumber = [_currentNumberlabel.text floatValue];
    }
}

- (IBAction)zeroButtonPressed:(id)button {
    NSLog(@"zero Pressed");
    if (equal) {
        _currentNumberlabel.text = [NSString stringWithFormat:@""];
        _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"0"];
        equal = false;
    } else {
        _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"0"];
    }

    if (operatorPressed) {
        rightSideNumber = [_currentNumberlabel.text floatValue];
    } else {
        leftSideNumber = [_currentNumberlabel.text floatValue];
    }
}

- (IBAction)decimalButtonPressed:(id)button {
    NSLog(@"decimal Pressed");
    if ([_currentNumberlabel.text rangeOfString:@"."].location == NSNotFound) {
        _currentNumberlabel.text = [_currentNumberlabel.text stringByAppendingString:@"."];
        if (operatorPressed) {
            rightSideNumber = [_currentNumberlabel.text floatValue];
        } else {
            leftSideNumber = [_currentNumberlabel.text floatValue];
        }
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
