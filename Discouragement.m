//
//  Discouragement.m
//  bank
//
//  Created by Piyal Basu on 12/11/12.
//  Copyright (c) 2012 Piyal Basu. All rights reserved.
//

#import "Discouragement.h"


@interface Discouragement ()

@end

@implementation Discouragement
@synthesize discouragementLabel;

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
    NSArray *discouragementArray = [NSArray arrayWithObjects: @"Keep Trying!", @"You're Getting It!", @"Practice Makes Perfect!", nil];
    
    NSUInteger randomIndex = arc4random() % [discouragementArray count];
    NSString *discouragementText = [discouragementArray objectAtIndex:randomIndex];
    discouragementLabel.text = discouragementText;
    [discouragementLabel setFont: [UIFont fontWithName:@"KidprintMTStd-Bold" size:50]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [discouragementLabel release];
    [super dealloc];
}
- (void)viewDidUnload {
    [self setDiscouragementLabel:nil];
    [super viewDidUnload];
}
@end
