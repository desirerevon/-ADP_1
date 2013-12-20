//
//  AgeViewController.m
//  Kringle
//
//  Created by Desire Gardner on 12/2/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "AgeViewController.h"
#import "NiceNaughtyViewController.h"
#import "ViewController.h"
#import "CountdownViewController.h"
#import "FreeHandViewController.h"
@interface AgeViewController ()

@end

@implementation AgeViewController




-(IBAction)onClickSeven:(id)sender
{
    
        NiceNaughtyViewController *view = [[NiceNaughtyViewController alloc] initWithNibName:@"NiceNaughtyViewController" bundle:nil];
        //[self.navigationController pushViewController:view animated:YES];
        [self presentViewController:view animated:YES completion:nil ];
        
    


}



-(IBAction)onClickThree:(id)sender
{
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Choose Your Colors" message:@"Draw your presents for Santa" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    
    FreeHandViewController *view = [[FreeHandViewController alloc] initWithNibName:@"FreeHandViewController" bundle:nil];
    //[self.navigationController pushViewController:view animated:YES];
    [self presentViewController:view animated:YES completion:nil ];
    
    
  

}


-(IBAction)onClickSanta:(id)sender
{

    ViewController *myView = [[ViewController alloc] initWithNibName:@"ViewController_iPhone" bundle:nil];
    //[self.navigationController pushViewController:view animated:YES];
    [self presentViewController:myView animated:YES completion:nil ];
    

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
