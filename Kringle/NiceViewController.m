//
//  NiceViewController.m
//  Kringle
//
//  Created by Desire Gardner on 12/2/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "NiceViewController.h"
#import "NiceNaughtyViewController.h"
#import "CountdownViewController.h"
#import "CertificateViewController.h"

@interface NiceViewController ()

@end

@implementation NiceViewController

@synthesize toEmail, subject, body;


-(IBAction)sendEmail:(id)sender
{
    
    NSLog(@"sendEmail");
    
    if ([MFMailComposeViewController canSendMail])
    {
        //sets the send to address
        NSMutableArray *recipients = [[NSMutableArray alloc] initWithCapacity:1];
        //[recipients addObject:toEmail.text];
        
        MFMailComposeViewController *controller = [[MFMailComposeViewController alloc] init];
        controller.mailComposeDelegate = self;
        [controller setSubject:subject.text];
        [controller setMessageBody:body.text isHTML:NO];
        [controller setToRecipients:recipients];
        

        
        [self presentViewController:controller animated:YES completion:nil];
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"ALERT" message:@"Your device is not set up for email." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        
    
        
        
    }
}




-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error

{
    switch (result) {
            
        case MFMailComposeResultCancelled:
        {
            break;
        }
        case MFMailComposeResultSaved:
        {
            break;
        }
        case MFMailComposeResultSent:
        {
            break;
        }
        case MFMailComposeResultFailed:
        {
            break;
        }
        default:
        {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Email" message:@"Email Failed" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alert show];
        
        }
            break;
    }

[self becomeFirstResponder];
[self dismissViewControllerAnimated:YES completion:nil];

}


- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    toEmail = textField;
    subject = textField;
    body = textField;
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    toEmail = nil;
    subject = nil;
    body = nil;
    [textField resignFirstResponder];
    return YES;
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



-(IBAction)cetificatePost:(id)sender
{
    {
        CertificateViewController *view = [[CertificateViewController alloc] initWithNibName:@"CertificateViewController" bundle:nil];
        //[self.navigationController pushViewController:view animated:YES];
        [self presentViewController:view animated:YES completion:nil ];
        
    }

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
