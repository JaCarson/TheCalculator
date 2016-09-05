//
//  ViewController.h
//  TheCaluclator*
//
//  Created by John Carson on 9/5/16.
//  Copyright © 2016 John Carson. All rights reserved.
//

#import <UIKit/UIKit.h>
int operation;
double displayNumber;
double resultNumber;
BOOL isDecimal;

@interface ViewController : UIViewController{
    
    IBOutlet UILabel *result;
    
}
- (void)setResultWithNumber:(int)theNumber;
- (void)operationWithNumber:(int)theNumber;
- (IBAction)plusButton:(id)sender;
- (IBAction)minusButton:(id)sender;
- (IBAction)multiplybutton:(id)sender;
- (IBAction)divideButton:(id)sender;
- (IBAction)AC:(id)sender;
- (IBAction)nineButton:(id)sender;
- (IBAction)eightButton:(id)sender;
- (IBAction)sevenButton:(id)sender;
- (IBAction)sixButton:(id)sender;
- (IBAction)fiveButton:(id)sender;
- (IBAction)fourButton:(id)sender;
- (IBAction)threeButton:(id)sender;
- (IBAction)twoButton:(id)sender;
- (IBAction)oneButton:(id)sender;
- (IBAction)zeroButton:(id)sender;
- (IBAction)dotButton:(id)sender;
- (IBAction)equalsButton:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *ResultNumber;










@end

