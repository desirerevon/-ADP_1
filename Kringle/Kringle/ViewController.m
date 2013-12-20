//
//  ViewController.m
//  Kringle
//
//  Created by Desire Gardner on 12/1/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "ViewController.h"
#import "AgeViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize moviePlayer;

//plays the video of Santa
-(IBAction)playVideo:(id)sender
{
    //string containing file path to video
    NSString *url   =   [[NSBundle mainBundle] pathForResource:@"santaMessage" ofType:@"mp4"];
    
    moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:[NSURL fileURLWithPath:url]];
    
    [self.view addSubview:moviePlayer.view];
    
    moviePlayer.fullscreen = YES;
    
    moviePlayer.allowsAirPlay = YES;
    
    [moviePlayer play];
    
}


-(IBAction)onClickList:(id)sender
{
    
    AgeViewController *view = [[AgeViewController alloc] initWithNibName:@"AgeViewController" bundle:nil];
    //[self.navigationController pushViewController:view animated:YES];
    [self presentViewController:view animated:YES completion:nil ];

}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
