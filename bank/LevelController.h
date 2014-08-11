//
//  LevelController.h
//  bank
//
//  Created by Piyal Basu on 12/12/12.
//  Copyright (c) 2012 Piyal Basu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LevelController : UIViewController
@property (retain, nonatomic) IBOutlet UILabel *titleLabel;
- (IBAction)easy:(id)sender;
- (IBAction)hard:(id)sender;

@end
