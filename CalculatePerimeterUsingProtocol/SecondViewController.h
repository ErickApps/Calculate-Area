//
//  SecondViewController.h
//  CalculatePerimeterUsingProtocol
//
//  Created by Erick Barbosa on 3/11/15.
//  Copyright (c) 2015 Erick_Barbosa. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DataDelegate <NSObject>
-(void)passData:(NSString*)data;
@end

@interface SecondViewController : UIViewController
@property (nonatomic, weak) id <DataDelegate> delegate;
@property NSString *typeOfOperation;
@property NSString *myStringWithInt;

@end
