//
//  SoundController.h
//  bank
//
//  Created by Piyal Basu on 12/12/12.
//  Copyright (c) 2012 Piyal Basu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SoundController : UIViewController
@property (retain, nonatomic) IBOutlet UILabel *titleLabel;
- (IBAction)soundOn:(id)sender;
- (IBAction)soundOff:(id)sender;

@end
