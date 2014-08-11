//
//  AppDelegate.h
//  bank
//
//  Created by Piyal Basu on 10/16/12.
//  Copyright (c) 2012 Piyal Basu. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;
@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    
    ViewController *viewController;
    CGRect bankOrigin;
    int bankY;
    int bankX;
    int bankWidth;
    int bankHeight;
    int counterValue;
    CGPoint centOrigin;
    NSString *counterString;
    
    
    
}

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic) CGRect bankOrigin;
@property (nonatomic) int bankY;
@property (nonatomic) int bankX;
@property (nonatomic) int bankWidth;
@property (nonatomic) int bankHeight;
@property (nonatomic) int counterValue;
@property (nonatomic, assign) CGPoint centOrigin;
@property (copy, readwrite) NSString *counterString;

@end
