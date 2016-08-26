//
//  ViewController.m
//  CalculatePerimeterUsingProtocol
//
//  Created by Erick Barbosa on 3/11/15.
//  Copyright (c) 2015 Erick_Barbosa. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *displayResults;
@end

@implementation ViewController

#pragma mark - DataDelegate
-(void) passData:(NSString *) data
{
    self.displayResults.text = data;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)findArea:(int)findArea{
    
    
    
    
}

- (IBAction)findPerimeter:(id)findPerimeter {
   }





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
   
    if ([segue.identifier isEqualToString:@"findArea"])
    {
         SecondViewController *svc= [segue destinationViewController];        
        //set the type of operation to computing Area
        svc.typeOfOperation = @"Computing Area";
        //inform the SecondViewController that ViewController is
        svc.delegate = self;
        
    }
    else
    {
        SecondViewController *svc= [segue destinationViewController];
        //set the label in the SecondView Controller to display
        
        svc.typeOfOperation = @"Computing Perimeter";
        //inform the SecondViewController that ViewController
        
        svc.delegate = self;

    }
}

@end
