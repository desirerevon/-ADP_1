//
//  CertificateViewController.m
//  Kringle
//
//  Created by Desire Gardner on 12/4/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "CertificateViewController.h"
#import "CountdownViewController.h"
#import "NiceNaughtyViewController.h"


@interface CertificateViewController ()

@end


@implementation CertificateViewController





- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}



-(IBAction)post:(id)sender
{

    NSArray *activityitems;
    
    activityitems = @[_postText.text = @"Share or keep your cetificate!", _postImage.image = imagePost.image];
    
    UIActivityViewController *activityController = [[UIActivityViewController alloc] initWithActivityItems: activityitems applicationActivities:NULL];
    
    [self presentViewController:activityController animated: YES completion:NULL];
                                                                                         
}


-(IBAction)countDown:(id)sender
{
    
    CountdownViewController *myView = [[CountdownViewController alloc] initWithNibName:@"CountdownViewController" bundle:nil];
    //[self.navigationController pushViewController:view animated:YES];
    [self presentViewController:myView animated:YES completion:nil ];
}


-(IBAction)goBack:(id)sender
{
    {
        NiceNaughtyViewController *view = [[NiceNaughtyViewController alloc] initWithNibName:@"NiceNaughtyViewController" bundle:nil];
        //[self.navigationController pushViewController:view animated:YES];
        [self presentViewController:view animated:YES completion:nil ];
        
    }
    
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
