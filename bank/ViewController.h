//
//  ViewController.h
//  bank
//
//  Created by Piyal Basu on 10/16/12.
//  Copyright (c) 2012 Piyal Basu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioServices.h>



@interface ViewController : UIViewController {
    int bankY;
    int bankX;
    int bankWidth;
    int bankHeight;
    int counterValue;
    NSInteger goalValue;
    CGPoint counterOrigin;
    CGPoint centOrigin;
    CGPoint nickelOrigin;
    CGPoint dimeOrigin;
    CGPoint quarterOrigin;
    NSString *counterString;
    CGPoint firstTouch;
    int pennyValue;
    int nickelValue;
    int dimeValue;
    int quarterValue;
    NSArray *imgArray1;
    NSArray *imgArray2;
    NSArray *imgArray3;
    NSArray *imgArray4;
    BOOL firstImage;
    SystemSoundID coinDrop;
    SystemSoundID oink;
    SystemSoundID rightAnswer;
    SystemSoundID wrongAnswer;
    SystemSoundID scream;
    SystemSoundID coinShake;
    NSInteger wrongCounter;
    NSInteger rightCounter;
    
    int sound;
    int level;

    
}

@property (retain, nonatomic) IBOutlet UIImageView *pig;

@property (retain, nonatomic) IBOutlet UIImageView *bank;
@property (retain, nonatomic) IBOutlet UILabel *goal;
@property (retain, nonatomic) IBOutlet UILabel *counter;
@property (retain, nonatomic) IBOutlet UIImageView *cent;
@property (retain, nonatomic) IBOutlet UIImageView *arrow;


@property (retain, nonatomic) IBOutlet UIImageView *nickel;
@property (retain, nonatomic) IBOutlet UIImageView *dime;
@property (retain, nonatomic) IBOutlet UIImageView *quarter;
@property (retain, nonatomic) IBOutlet UIImageView *centBase;
@property (retain, nonatomic) IBOutlet UIImageView *nickelBase;
@property (retain, nonatomic) IBOutlet UIImageView *dimeBase;
@property (retain, nonatomic) IBOutlet UIImageView *quarterBase;

@property (retain, nonatomic) IBOutlet UILabel *pennyLabel;
@property (retain, nonatomic) IBOutlet UILabel *nickelLabel;
@property (retain, nonatomic) IBOutlet UILabel *dimeLabel;
@property (retain, nonatomic) IBOutlet UILabel *quarterLabel;

@property (retain, nonatomic) IBOutlet UILabel *centLabel;
@property (retain, nonatomic) IBOutlet UILabel *fiveLabel;
@property (retain, nonatomic) IBOutlet UILabel *tenLabel;
@property (retain, nonatomic) IBOutlet UILabel *twentyFiveLabel;


- (void) changePig;



@end
