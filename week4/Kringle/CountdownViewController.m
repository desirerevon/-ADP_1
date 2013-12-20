//
//  CountdownViewController.m
//  Kringle
//
//  Created by Desire Gardner on 12/3/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "CountdownViewController.h"
#import "ViewController.h"

@interface CountdownViewController ()

@end

@implementation CountdownViewController



-(void)updateLabel
{
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    int units = NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit;
    
    NSDateComponents *components = [calendar components:units fromDate:[NSDate date] toDate:destinationDate options:0];
    
    [datelabel setText:[NSString stringWithFormat:@"  %d%c           %d%c          %d%c", [components day], 'd', [components hour], 'h', [components minute], 'm']];
    
    

}


-(IBAction)goHome:(id)sender
{
    ViewController *view = [[ViewController alloc] initWithNibName:@"ViewController_iPhone" bundle:nil];
    //[self.navigationController pushViewController:view animated:YES];
    [self presentViewController:view animated:YES completion:nil ];

    
}




- (void)viewDidLoad
{
    [super viewDidLoad];
    
    destinationDate = [NSDate dateWithTimeIntervalSince1970:1387954765];
                       
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateLabel) userInfo:nil repeats:YES];
    
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
