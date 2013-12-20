//
//  CountdownViewController.h
//  Kringle
//
//  Created by Desire Gardner on 12/3/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CountdownViewController : UIViewController

{
    NSDate *destinationDate;
    IBOutlet UILabel *datelabel;
    NSTimer *timer;

}

-(void)updateLabel;

-(IBAction)goHome:(id)sender;

@end
