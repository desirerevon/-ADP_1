//
//  NaughtyViewController.h
//  Kringle
//
//  Created by Desire Gardner on 12/2/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface NaughtyViewController : UIViewController <MFMailComposeViewControllerDelegate>


-(IBAction)sendEmail:(id)sender;

-(IBAction)goBack:(id)sender;
-(IBAction)countDown:(id)sender;



@end
