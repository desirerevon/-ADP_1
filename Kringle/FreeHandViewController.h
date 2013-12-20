//
//  FreeHandViewController.h
//  Kringle
//
//  Created by Desire Gardner on 12/3/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FreeHandViewController : UIViewController <UIActionSheetDelegate>
{
    IBOutlet UIImageView *mainImage;
    IBOutlet UIImageView *tempDrawImage;
    
    IBOutlet UIButton *reset;
    IBOutlet UIButton *save;
    
    CGPoint lastPoint;
    CGFloat red;
    CGFloat green;
    CGFloat blue;
    CGFloat brush;
    CGFloat opacity;
    BOOL mouseSwiped;

    
}

@property(strong, nonatomic) IBOutlet UIImageView *mainImage;
@property(strong, nonatomic) IBOutlet UIImageView *tempDrawImage;





-(IBAction)onBack:(id)sender;
-(IBAction)countDown:(id)sender;


-(IBAction)pencilPressed:(id)sender;

-(IBAction)eraserPressed:(id)sender;

- (IBAction)reset:(id)sender;

- (IBAction)save:(id)sender;





@end
