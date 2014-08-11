//
//  Encouragement1.m
//  bank
//
//  Created by Piyal Basu on 11/28/12.
//  Copyright (c) 2012 Piyal Basu. All rights reserved.
//

#import "Encouragement1.h"

@interface Encouragement1 ()

@end

@implementation Encouragement1
@synthesize encouragementLabel;

- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
	[self.presentingViewController dismissModalViewControllerAnimated: YES];
}

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
    
    NSArray *encouragementArray = [NSArray arrayWithObjects: @"Terrific!", @"Great Job!", @"You're Good!", @"YES!", nil];
    
    NSUInteger randomIndex = arc4random() % [encouragementArray count];
    NSString *encouragementText = [encouragementArray objectAtIndex:randomIndex];
    encouragementLabel.text = encouragementText;
    
    if(encouragementText == [encouragementArray objectAtIndex:3]){
         [encouragementLabel setFont: [UIFont fontWithName:@"KidprintMTStd-Bold" size:70]];
    
    }
    else {
    
    [encouragementLabel setFont: [UIFont fontWithName:@"KidprintMTStd-Bold" size:50]];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [encouragementLabel release];
    [super dealloc];
}
- (void)viewDidUnload {
    [self setEncouragementLabel:nil];
    [super viewDidUnload];
}
@end
