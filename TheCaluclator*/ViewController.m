//
//  ViewController.m
//  TheCaluclator*
//
//  Created by John Carson on 9/5/16.
//  Copyright © 2016 John Carson. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    isDecimal = false;
    resultNumber = 0;
  
}


- (void)didReceiveMemoryWarning
{
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setResultWithNumber:(int)theNumber {
    if (!isDecimal) {
        displayNumber *= 10;
        displayNumber += theNumber;
        result.text = [NSString stringWithFormat:@"%.0f", displayNumber];
    } else {
        result.text = [result.text stringByAppendingString:[NSString stringWithFormat:@" %d", theNumber]];
    
}
    displayNumber = [result.text floatValue];
    
   }

-  (void)operationWithNumber:(int)theNumber{
    isDecimal = false;
    if (resultNumber == 0){
        resultNumber = displayNumber;
    }else{
        result.text = [NSString stringWithFormat:@"%.2f", resultNumber];
        switch (operation) {
            case 1:
                resultNumber += displayNumber;
                break;
            case 2:
                resultNumber -= displayNumber;
                break;
            case 3:
                resultNumber *= displayNumber;
                break;
            case 4:
                resultNumber /= displayNumber;
                
            default:
                break;
        }
                       
}
    
    operation = theNumber;
    displayNumber = 0;
    }

- (IBAction)AC:(id)sender {
    operation = 0;
    resultNumber = 0;
    displayNumber = 0;
    isDecimal = false;
    result.text = [NSString stringWithFormat:@"%i", 0];
    
}

- (IBAction)divideButton:(id)sender{
    if (resultNumber != 0){
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f", resultNumber];
        displayNumber = [result.text floatValue];
        resultNumber = 0;
        
}
    [self operationWithNumber:4];
    
}

-(IBAction)sevenButton:(id)sender{
    [self setResultWithNumber:7];
    
}
-(IBAction)eightButton:(id)sender{
    [self setResultWithNumber:8];
    
}
-(IBAction)nineButton:(id)sender{
    [self setResultWithNumber:9];
}
-(IBAction)sixButton:(id)sender{
    [self setResultWithNumber:6];
    
}

-(IBAction)fiveButton:(id)sender{
    [self setResultWithNumber:5];
}
-(IBAction)fourButton:(id)sender{
    [self setResultWithNumber:4];
}
-(IBAction)threeButton:(id)sender{
    [self setResultWithNumber:3];
}

-(IBAction)twoButton:(id)sender{
    [self setResultWithNumber:2];
    
}

-(IBAction)oneButton:(id)sender{
    [self setResultWithNumber:1];
    
}

-(IBAction)zeroButton:(id)sender{
    [self setResultWithNumber:0];
    
}

-(IBAction)multiplybutton:(id)sender{
    if (resultNumber != 0){
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f", resultNumber];
        displayNumber = [result.text floatValue];
        resultNumber = 0;
        
    }
    [self operationWithNumber:3];
}
-(IBAction)minusButton:(id)sender{
    if (resultNumber != 0){
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f", resultNumber];
        displayNumber = [result.text floatValue];
        resultNumber = 0;
        
    }
    [self operationWithNumber:2];
}
-(IBAction)plusButton:(id)sender{
    if (resultNumber != 0){
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f", resultNumber];
        displayNumber = [result.text floatValue];
        resultNumber = 0;
        
    }
    [self operationWithNumber:1];
    
}

-(IBAction)dotButton:(id)sender{
    isDecimal = true;
    NSRange range = [result.text rangeOfString:@"."];
    if(range.location == NSNotFound) {
        result.text = [result.text stringByAppendingString:@"."];
        
    }

    
}

- (IBAction)equalsButton:(id)sender {
    [self operationWithNumber: operation];
    result.text = [NSString stringWithFormat:@"%.2f", resultNumber];
    displayNumber = [result.text floatValue];
    resultNumber = 0;
    
}

    
    



@end
