//
//  NiceNaughtyViewController.m
//  Kringle
//
//  Created by Desire Gardner on 12/2/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "NiceNaughtyViewController.h"
#import "NiceViewController.h"
#import "AgeViewController.h"
#import "NaughtyViewController.h"
#import "CountdownViewController.h"

@interface NiceNaughtyViewController ()

@end

@implementation NiceNaughtyViewController



-(IBAction)onClickNice:(id)sender
{
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"HO! HO! HO!" message:@"What would you like for Christmas?" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        
        NiceViewController *view = [[NiceViewController alloc] initWithNibName:@"NiceViewController" bundle:nil];
        //[self.navigationController pushViewController:view animated:YES];
        [self presentViewController:view animated:YES completion:nil ];
        
    }
    
    
}


-(IBAction)onClickNaughty:(id)sender
{
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"OH NO!" message:@"Do something nice to get on the NICE list" delegate:self cancelButtonTitle:@"Send A Note" otherButtonTitles:nil];
        [alert show];
        
        NaughtyViewController *view = [[NaughtyViewController alloc] initWithNibName:@"NaughtyViewController" bundle:nil];
        //[self.navigationController pushViewController:view animated:YES];
        [self presentViewController:view animated:YES completion:nil ];
        
    }
    
    
}


-(IBAction)goBack:(id)sender
{
    {
        AgeViewController *view = [[AgeViewController alloc] initWithNibName:@"AgeViewController" bundle:nil];
        //[self.navigationController pushViewController:view animated:YES];
        [self presentViewController:view animated:YES completion:nil ];
        
    }
    
}


-(IBAction)countDown:(id)sender
{
    
    CountdownViewController *myView = [[CountdownViewController alloc] initWithNibName:@"CountdownViewController" bundle:nil];
    //[self.navigationController pushViewController:view animated:YES];
    [self presentViewController:myView animated:YES completion:nil ];
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
