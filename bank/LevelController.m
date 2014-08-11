//
//  LevelController.m
//  bank
//
//  Created by Piyal Basu on 12/12/12.
//  Copyright (c) 2012 Piyal Basu. All rights reserved.
//

#import "LevelController.h"

@interface LevelController ()

@end

@implementation LevelController
@synthesize titleLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [titleLabel setFont: [UIFont fontWithName:@"KidprintMTStd-Bold" size:50]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [titleLabel release];
    [super dealloc];
}
- (void)viewDidUnload {
    [self setTitleLabel:nil];
    [super viewDidUnload];
}
- (IBAction)easy:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"easy" object: self];
    [self.presentingViewController dismissModalViewControllerAnimated: YES];
}

- (IBAction)hard:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"hard" object: self];
    [self.presentingViewController dismissModalViewControllerAnimated: YES];
}
@end
