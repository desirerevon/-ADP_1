//
//  ViewController.h
//  Kringle
//
//  Created by Desire Gardner on 12/1/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController
{
        
}

@property (nonatomic,strong) MPMoviePlayerController *moviePlayer;



-(IBAction)playVideo:(id)sender;


-(IBAction)onClickList:(id)sender;

@end
