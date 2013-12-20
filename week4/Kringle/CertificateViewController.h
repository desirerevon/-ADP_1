//
//  CertificateViewController.h
//  Kringle
//
//  Created by Desire Gardner on 12/4/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CertificateViewController : UIViewController

{
    IBOutlet UIImageView *imagePost;
}

@property (strong, nonatomic) UILabel *postText;
@property (strong, nonatomic) UIImageView *postImage;

-(IBAction)post:(id)sender;
-(IBAction)countDown:(id)sender;
-(IBAction)goBack:(id)sender;


@end
