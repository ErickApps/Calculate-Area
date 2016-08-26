//
//  SecondViewController.m
//  CalculatePerimeterUsingProtocol
//
//  Created by Erick Barbosa on 3/11/15.
//  Copyright (c) 2015 Erick_Barbosa. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UITextField *widthTextField;
@property (weak, nonatomic) IBOutlet UITextField *heightTextField;
@property int area;
@property int perimeter;

@property (weak, nonatomic) IBOutlet UILabel *outLabel;
@end

@implementation SecondViewController

- (IBAction)compute:(id)sender {
    //if computing area
    if([_typeOfOperation isEqualToString:@"Computing Area"])
    {
        //compute the area
        _area = [_heightTextField.text intValue] *
        [_widthTextField.text intValue];
        // store the calculated area as a string
        _myStringWithInt = [NSString stringWithFormat:@"The area is %d", _area];
        
        //send the delegate method
        [self.delegate passData:_myStringWithInt];
        //dismiss the current view controller so the first
        
        [self dismissViewControllerAnimated:YES
                                 completion:nil];
    }
    else{
        if ([_typeOfOperation isEqualToString:@"Computing Perimeter"]){
            //compute the perimeter
            _perimeter = 2 * ([_heightTextField.text intValue] +[_widthTextField.text intValue]);
            // store the calculated perimeter as a string
            _myStringWithInt = [NSString
                                stringWithFormat:@"The perimeter is %d", _perimeter];
            //send the delegate method
            [self.delegate passData:_myStringWithInt];
            //dismiss the current view controller so the
            
            [self dismissViewControllerAnimated:YES
                                     completion:nil];
        }}}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _outLabel.text = _typeOfOperation;
    
    
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end