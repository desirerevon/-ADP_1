//
//  NiceViewController.h
//  Kringle
//
//  Created by Desire Gardner on 12/2/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface NiceViewController : UIViewController <MFMailComposeViewControllerDelegate, UITextFieldDelegate>
{

    IBOutlet UITextField *toEmail;
    IBOutlet UITextField *subject;
    IBOutlet UITextField *body;

    
}

@property(nonatomic, retain)UITextField *toEmail;
@property(nonatomic, retain)UITextField *subject;
@property(nonatomic, retain)UITextField *body;



-(IBAction)sendEmail:(id)sender;

-(IBAction)goBack:(id)sender;
-(IBAction)countDown:(id)sender;

-(IBAction)cetificatePost:(id)sender;



@end
