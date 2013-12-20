//
//  NaughtyViewController.m
//  Kringle
//
//  Created by Desire Gardner on 12/2/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "NaughtyViewController.h"
#import "NiceNaughtyViewController.h"
#import "CountdownViewController.h"

@interface NaughtyViewController ()

@end

@implementation NaughtyViewController



-(IBAction)sendEmail:(id)sender
{
    // Email Subject
    NSString *emailTitle = @"Test Email";
    // Email Content
    NSString *messageBody = @"Send your Christmas list to Santa!";
    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:@"wjones@fullsail.com"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:NO];
    [mc setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
    
}

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}




-(IBAction)goBack:(id)sender
{
    {
        NiceNaughtyViewController *view = [[NiceNaughtyViewController alloc] initWithNibName:@"NiceNaughtyViewController" bundle:nil];
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
