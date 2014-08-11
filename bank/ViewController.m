//
//  ViewController.m
//  bank
//
//  Created by Piyal Basu on 10/16/12.
//  Copyright (c) 2012 Piyal Basu. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

#import "Encouragement1.h"
#import "Discouragement.h"
#import "SoundController.h"
#import "LevelController.h"


@interface ViewController ()

@end

@implementation ViewController
@synthesize pig;
@synthesize bank;
@synthesize goal;
@synthesize counter;
@synthesize cent;
@synthesize arrow;

@synthesize nickel;
@synthesize dime;
@synthesize quarter;
@synthesize centBase;
@synthesize nickelBase;
@synthesize dimeBase;
@synthesize quarterBase;

@synthesize pennyLabel;
@synthesize nickelLabel;
@synthesize dimeLabel;
@synthesize quarterLabel;
@synthesize centLabel;
@synthesize fiveLabel;
@synthesize tenLabel;
@synthesize twentyFiveLabel;






- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    
    firstTouch = [touch locationInView:self.view];
    NSLog(@"%@", NSStringFromCGPoint(firstTouch));
    if (CGRectContainsPoint(nickel.frame, firstTouch)) {
        
        NSLog(@"%@", NSStringFromCGPoint(firstTouch));
        
    }
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    
    firstTouch = [touch locationInView:self.view];
    if (CGRectContainsPoint(cent.frame, firstTouch)) {
        
        cent.center = [[touches anyObject] locationInView: self.view];
        
    }
    
    
    else if (CGRectContainsPoint(nickel.frame, firstTouch)) {
        
       nickel.center = [[touches anyObject] locationInView: self.view];
        
    }
    
    else if (CGRectContainsPoint(dime.frame, firstTouch)) {
        
        dime.center = [[touches anyObject] locationInView: self.view];
        
    }
    
    else if (CGRectContainsPoint(quarter.frame, firstTouch)) {
        
        quarter.center = [[touches anyObject] locationInView: self.view];
        
    }

    else {
        [cent setCenter: centOrigin];
        [nickel setCenter: nickelOrigin];
        [dime setCenter: dimeOrigin];
        [quarter setCenter: quarterOrigin];
        
    }
    
    
    if (cent.center.x > bankX && cent.center.x < bankWidth && cent.center.y > bankY && cent.center.y < bankHeight){
        
        cent.alpha = 1.0;
    }
    
    else {
      cent.alpha = 0.5;
    }
    
    if (nickel.center.x > bankX && nickel.center.x < bankWidth && nickel.center.y > bankY && nickel.center.y < bankHeight){
        
        nickel.alpha = 1.0;
    }
    
    else {
        nickel.alpha = 0.5;
    }
    
    if (dime.center.x > bankX && dime.center.x < bankWidth && dime.center.y > bankY && dime.center.y < bankHeight){
        
        dime.alpha = 1.0;
    }
    
    else {
        dime.alpha = 0.5;
    }
    
    if (quarter.center.x > bankX && quarter.center.x < bankWidth && quarter.center.y > bankY && quarter.center.y < bankHeight){
        
        quarter.alpha = 1.0;
    }
    
    else {
        quarter.alpha = 0.5;
    }
}


- (void) touchesEnded: (NSSet *) touches withEvent: (UIEvent *) event {
    UITouch *touch = [touches anyObject];
    
    firstTouch = [touch locationInView:self.view];
    
    
    //Begin pennies
    if (CGRectContainsPoint(cent.frame, firstTouch)) {
        
        
        
        //NSLog(@"bank.frame.Y is %f", viewController.bank.frame.origin.y);
        //NSLog(@"bank.frame.X is %f", viewController.bank.frame.origin.x);
        //NSLog(@"bank width is %i", appDelegate.bankWidth);
        //NSLog(@"bank height is %i", appDelegate.bankHeight);
        //NSLog(@"Cent.center.X is %f", self.center.x);
        //NSLog(@"Cent.center.Y is %f", self.center.y);
        
        if (cent.center.x > bankX && cent.center.x < bankWidth && cent.center.y > bankY && cent.center.y < bankHeight){
            
            if(counterValue + pennyValue <= goalValue){
            counterValue = counterValue + pennyValue;
           
            if(firstImage == YES){
                pig.image = [imgArray1 lastObject];
                pig.animationImages = imgArray1;
                pig.animationDuration = 1;
                pig.animationRepeatCount = 1;
                [pig startAnimating];
                firstImage = NO;
                 NSLog(@"FIRST");

            
                [UIView animateWithDuration: 0.0
                                      delay: 0.0
                                    options: UIViewAnimationOptionCurveEaseInOut
                                 animations: ^{
                                     //This block describes what the animation should do.
                                     counter.center = CGPointMake(counter.center.x, counter.center.y + 10);
                                 }
                                 completion: ^(BOOL b) {
                                     [UIView animateWithDuration: 0.0
                                                           delay: .47
                                                         options: UIViewAnimationOptionCurveEaseInOut
                                                      animations: ^{
                                                          //This block describes what the animation should do.
                                                          counter.center = CGPointMake(counter.center.x, counter.center.y - 10);
                                                          
                                                           
                                                      }
                                                      completion: NULL
                                      ];
                                 }
                 ];

            
                AudioServicesPlaySystemSound(coinDrop);
            
            }//end firstImage
            
            else if((firstImage == NO) && (counterValue != goalValue)) {
                NSLog(@"NO!!!");
               
                pig.image = [imgArray2 lastObject];
                pig.animationImages = imgArray2;
                pig.animationDuration = 1;
                pig.animationRepeatCount = 1;
                [pig startAnimating];
                
                [UIView animateWithDuration: 0.0
                                      delay: 0.0
                                    options: UIViewAnimationOptionCurveEaseInOut
                                 animations: ^{
                                     //This block describes what the animation should do.
                                     counter.center = CGPointMake(counter.center.x, counter.center.y + 10);
                                 }
                                 completion: ^(BOOL b) {
                                     [UIView animateWithDuration: 0.0
                                                           delay: .49
                                                         options: UIViewAnimationOptionCurveEaseInOut
                                                      animations: ^{
                                                          //This block describes what the animation should do.
                                                          counter.center = CGPointMake(counter.center.x, counter.center.y - 10);
                                                      }
                                                      completion: NULL
                                      ];
                                 }
                 ];
                AudioServicesPlaySystemSound(coinDrop);
            }//end firstImageNo
           
            NSLog (@"counter is %i", counterValue);
            
            
            counterString = [NSString stringWithFormat:@"%i¢", counterValue];
            
            counter.text = counterString;
            
            [cent setCenter: centOrigin];
        }
            
            else {
                NSLog(@"TOO MUCH!!!");
                wrongCounter ++;
                NSLog(@"wrong counter is %i", wrongCounter);
                
                if((wrongCounter % 3) == 0){
                    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
                    Discouragement *discouragement = (Discouragement*)[mainStoryboard instantiateViewControllerWithIdentifier:@"Discouragement"];
                    
                    [self presentModalViewController:discouragement animated:YES];
                    
                }
                
                pig.image = [imgArray4 lastObject];
                pig.animationImages = imgArray4;
                pig.animationDuration = 1;
                pig.animationRepeatCount = 1;
                [pig startAnimating];
                [UIView animateWithDuration: 0.0
                                      delay: 0.0
                                    options: UIViewAnimationOptionCurveEaseInOut
                                 animations: ^{
                                     //This block describes what the animation should do.
                                     counter.center = CGPointMake(counter.center.x, counter.center.y + 10);
                                 }
                                 completion: ^(BOOL b) {
                                     [UIView animateWithDuration: 0.0
                                                           delay: .49
                                                         options: UIViewAnimationOptionCurveEaseInOut
                                                      animations: ^{
                                                          //This block describes what the animation should do.
                                                          counter.center = CGPointMake(counter.center.x, counter.center.y - 10);
                                                      }
                                                      completion: NULL
                                      ];
                                 }
                 ];
                AudioServicesPlaySystemSound(scream);
                AudioServicesPlaySystemSound(wrongAnswer);
                [cent setCenter: centOrigin];
            }

        
        }
        
               
        else {
            
            [cent setCenter: centOrigin];
        }
         
   
        
    }

    
    
     //Begin Nickels

if (CGRectContainsPoint(nickel.frame, firstTouch)) {

    
    if (nickel.center.x > bankX && nickel.center.x < bankWidth && nickel.center.y > bankY && nickel.center.y < bankHeight){
        
        if(counterValue + nickelValue <= goalValue){
        counterValue = counterValue + nickelValue;
        
        if(firstImage == YES){
            pig.image = [imgArray1 lastObject];
            pig.animationImages = imgArray1;
            pig.animationDuration = 1;
            pig.animationRepeatCount = 1;
            [pig startAnimating];
            firstImage = NO;
            NSLog(@"FIRST");
            
            
            [UIView animateWithDuration: 0.0
                                  delay: 0.0
                                options: UIViewAnimationOptionCurveEaseInOut
                             animations: ^{
                                 //This block describes what the animation should do.
                                 counter.center = CGPointMake(counter.center.x, counter.center.y + 10);
                             }
                             completion: ^(BOOL b) {
                                 [UIView animateWithDuration: 0.0
                                                       delay: .47
                                                     options: UIViewAnimationOptionCurveEaseInOut
                                                  animations: ^{
                                                      //This block describes what the animation should do.
                                                      counter.center = CGPointMake(counter.center.x, counter.center.y - 10);
                                                      
                                                      
                                                  }
                                                  completion: NULL
                                  ];
                             }
             ];
            
            
            AudioServicesPlaySystemSound(coinDrop);
            
        }//end firstImage
        
        else if((firstImage == NO) && (counterValue != goalValue)) {
            NSLog(@"NO!!!");
            
            pig.image = [imgArray2 lastObject];
            pig.animationImages = imgArray2;
            pig.animationDuration = 1;
            pig.animationRepeatCount = 1;
            [pig startAnimating];
            
            [UIView animateWithDuration: 0.0
                                  delay: 0.0
                                options: UIViewAnimationOptionCurveEaseInOut
                             animations: ^{
                                 //This block describes what the animation should do.
                                 counter.center = CGPointMake(counter.center.x, counter.center.y + 10);
                             }
                             completion: ^(BOOL b) {
                                 [UIView animateWithDuration: 0.0
                                                       delay: .49
                                                     options: UIViewAnimationOptionCurveEaseInOut
                                                  animations: ^{
                                                      //This block describes what the animation should do.
                                                      counter.center = CGPointMake(counter.center.x, counter.center.y - 10);
                                                  }
                                                  completion: NULL
                                  ];
                             }
             ];
            AudioServicesPlaySystemSound(coinDrop);
        }//end firstImageNo
        
        NSLog (@"counter is %i", counterValue);
        
        
        counterString = [NSString stringWithFormat:@"%i¢", counterValue];
        
        counter.text = counterString;
        
        [nickel setCenter: nickelOrigin];
    }
    
        else {
            NSLog(@"TOO MUCH!!!");
            wrongCounter ++;
            NSLog(@"wrong counter is %i", wrongCounter);
            
            if((wrongCounter % 3) == 0){
                UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
                Discouragement *discouragement = (Discouragement*)[mainStoryboard instantiateViewControllerWithIdentifier:@"Discouragement"];
                
                [self presentModalViewController:discouragement animated:YES];
                
            }
            
            pig.image = [imgArray4 lastObject];
            pig.animationImages = imgArray4;
            pig.animationDuration = 1;
            pig.animationRepeatCount = 1;
            [pig startAnimating];
            [UIView animateWithDuration: 0.0
                                  delay: 0.0
                                options: UIViewAnimationOptionCurveEaseInOut
                             animations: ^{
                                 //This block describes what the animation should do.
                                 counter.center = CGPointMake(counter.center.x, counter.center.y + 10);
                             }
                             completion: ^(BOOL b) {
                                 [UIView animateWithDuration: 0.0
                                                       delay: .49
                                                     options: UIViewAnimationOptionCurveEaseInOut
                                                  animations: ^{
                                                      //This block describes what the animation should do.
                                                      counter.center = CGPointMake(counter.center.x, counter.center.y - 10);
                                                  }
                                                  completion: NULL
                                  ];
                             }
             ];
            AudioServicesPlaySystemSound(scream);
            AudioServicesPlaySystemSound(wrongAnswer);
            [nickel setCenter: nickelOrigin];
        }

    
    }
    
    else {
        
        [nickel setCenter: nickelOrigin];
    }
    
    
    
}
    


//Begin Dimes

if (CGRectContainsPoint(dime.frame, firstTouch)) {
    
    
    if (dime.center.x > bankX && dime.center.x < bankWidth && dime.center.y > bankY && dime.center.y < bankHeight){
        
         if(counterValue + dimeValue <= goalValue){
        counterValue = counterValue + dimeValue;
        
        
        
        if(firstImage == YES){
            pig.image = [imgArray1 lastObject];
            pig.animationImages = imgArray1;
            pig.animationDuration = 1;
            pig.animationRepeatCount = 1;
            [pig startAnimating];
            firstImage = NO;
            NSLog(@"FIRST");
            
            
            [UIView animateWithDuration: 0.0
                                  delay: 0.0
                                options: UIViewAnimationOptionCurveEaseInOut
                             animations: ^{
                                 //This block describes what the animation should do.
                                 counter.center = CGPointMake(counter.center.x, counter.center.y + 10);
                             }
                             completion: ^(BOOL b) {
                                 [UIView animateWithDuration: 0.0
                                                       delay: .47
                                                     options: UIViewAnimationOptionCurveEaseInOut
                                                  animations: ^{
                                                      //This block describes what the animation should do.
                                                      counter.center = CGPointMake(counter.center.x, counter.center.y - 10);
                                                      
                                                      
                                                  }
                                                  completion: NULL
                                  ];
                             }
             ];
            
            
            AudioServicesPlaySystemSound(coinDrop);
            
        }//end firstImage
        
        else if((firstImage == NO) && (counterValue != goalValue)) {
            NSLog(@"NO!!!");
            
            pig.image = [imgArray2 lastObject];
            pig.animationImages = imgArray2;
            pig.animationDuration = 1;
            pig.animationRepeatCount = 1;
            [pig startAnimating];
            
            [UIView animateWithDuration: 0.0
                                  delay: 0.0
                                options: UIViewAnimationOptionCurveEaseInOut
                             animations: ^{
                                 //This block describes what the animation should do.
                                 counter.center = CGPointMake(counter.center.x, counter.center.y + 10);
                             }
                             completion: ^(BOOL b) {
                                 [UIView animateWithDuration: 0.0
                                                       delay: .49
                                                     options: UIViewAnimationOptionCurveEaseInOut
                                                  animations: ^{
                                                      //This block describes what the animation should do.
                                                      counter.center = CGPointMake(counter.center.x, counter.center.y - 10);
                                                  }
                                                  completion: NULL
                                  ];
                             }
             ];
            AudioServicesPlaySystemSound(coinDrop);
        }//end firstImageNo
        
        NSLog (@"counter is %i", counterValue);
        
        
        counterString = [NSString stringWithFormat:@"%i¢", counterValue];
        
        counter.text = counterString;
        
        [dime setCenter: dimeOrigin];
    }
         else {
             NSLog(@"TOO MUCH!!!");
             wrongCounter ++;
             NSLog(@"wrong counter is %i", wrongCounter);

             if((wrongCounter % 3) == 0){
                 UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
                 Discouragement *discouragement = (Discouragement*)[mainStoryboard instantiateViewControllerWithIdentifier:@"Discouragement"];
                 
                 [self presentModalViewController:discouragement animated:YES];
                 
             }
             
             pig.image = [imgArray4 lastObject];
             pig.animationImages = imgArray4;
             pig.animationDuration = 1;
             pig.animationRepeatCount = 1;
             [pig startAnimating];
             [UIView animateWithDuration: 0.0
                                   delay: 0.0
                                 options: UIViewAnimationOptionCurveEaseInOut
                              animations: ^{
                                  //This block describes what the animation should do.
                                  counter.center = CGPointMake(counter.center.x, counter.center.y + 10);
                              }
                              completion: ^(BOOL b) {
                                  [UIView animateWithDuration: 0.0
                                                        delay: .49
                                                      options: UIViewAnimationOptionCurveEaseInOut
                                                   animations: ^{
                                                       //This block describes what the animation should do.
                                                       counter.center = CGPointMake(counter.center.x, counter.center.y - 10);
                                                   }
                                                   completion: NULL
                                   ];
                              }
              ];
             AudioServicesPlaySystemSound(scream);
             AudioServicesPlaySystemSound(wrongAnswer);
             [dime setCenter: dimeOrigin];
         }
        
    }

    
    else {
        
        [dime setCenter: dimeOrigin];
    }
    
    
    
}

//Begin Quarters

if (CGRectContainsPoint(quarter.frame, firstTouch)) {
    
    
    if (quarter.center.x > bankX && quarter.center.x < bankWidth && quarter.center.y > bankY && quarter.center.y <
        bankHeight)
    {
        
        if(counterValue + quarterValue <= goalValue){
        counterValue = counterValue + quarterValue;
        
        
                if(firstImage == YES){
            pig.image = [imgArray1 lastObject];
            pig.animationImages = imgArray1;
            pig.animationDuration = 1;
            pig.animationRepeatCount = 1;
            [pig startAnimating];
            firstImage = NO;
            NSLog(@"FIRST");
            
            
            [UIView animateWithDuration: 0.0
                                  delay: 0.0
                                options: UIViewAnimationOptionCurveEaseInOut
                             animations: ^{
                                 //This block describes what the animation should do.
                                 counter.center = CGPointMake(counter.center.x, counter.center.y + 10);
                             }
                             completion: ^(BOOL b) {
                                 [UIView animateWithDuration: 0.0
                                                       delay: .47
                                                     options: UIViewAnimationOptionCurveEaseInOut
                                                  animations: ^{
                                                      //This block describes what the animation should do.
                                                      counter.center = CGPointMake(counter.center.x, counter.center.y - 10);
                                                      
                                                      
                                                  }
                                                  completion: NULL
                                  ];
                             }
             ];
            
            
            AudioServicesPlaySystemSound(coinDrop);
            
        }//end firstImage
        
        else if((firstImage == NO) && (counterValue != goalValue)) {
            NSLog(@"NO!!!");
            
            pig.image = [imgArray2 lastObject];
            pig.animationImages = imgArray2;
            pig.animationDuration = 1;
            pig.animationRepeatCount = 1;
            [pig startAnimating];
            
            [UIView animateWithDuration: 0.0
                                  delay: 0.0
                                options: UIViewAnimationOptionCurveEaseInOut
                             animations: ^{
                                 //This block describes what the animation should do.
                                 counter.center = CGPointMake(counter.center.x, counter.center.y + 10);
                             }
                             completion: ^(BOOL b) {
                                 [UIView animateWithDuration: 0.0
                                                       delay: .49
                                                     options: UIViewAnimationOptionCurveEaseInOut
                                                  animations: ^{
                                                      //This block describes what the animation should do.
                                                      counter.center = CGPointMake(counter.center.x, counter.center.y - 10);
                                                  }
                                                  completion: NULL
                                  ];
                             }
             ];
            AudioServicesPlaySystemSound(coinDrop);
        }//end firstImageNo
        
        NSLog (@"counter is %i", counterValue);
        
        
        counterString = [NSString stringWithFormat:@"%i¢", counterValue];
        
        counter.text = counterString;
        
        [quarter setCenter: quarterOrigin];
        }
        else {
            NSLog(@"TOO MUCH!!!");
            wrongCounter ++;
            NSLog(@"wrong counter is %i", wrongCounter);
            
          
            if((wrongCounter % 3) == 0){
                UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
                Discouragement *discouragement = (Discouragement*)[mainStoryboard instantiateViewControllerWithIdentifier:@"Discouragement"];
                
                [self presentModalViewController:discouragement animated:YES];
                
            }
          

            

            pig.image = [imgArray4 lastObject];
            pig.animationImages = imgArray4;
            pig.animationDuration = 1;
            pig.animationRepeatCount = 1;
            [pig startAnimating];
            [UIView animateWithDuration: 0.0
                                  delay: 0.0
                                options: UIViewAnimationOptionCurveEaseInOut
                             animations: ^{
                                 //This block describes what the animation should do.
                                 counter.center = CGPointMake(counter.center.x, counter.center.y + 10);
                             }
                             completion: ^(BOOL b) {
                                 [UIView animateWithDuration: 0.0
                                                       delay: .49
                                                     options: UIViewAnimationOptionCurveEaseInOut
                                                  animations: ^{
                                                      //This block describes what the animation should do.
                                                      counter.center = CGPointMake(counter.center.x, counter.center.y - 10);
                                                  }
                                                  completion: NULL
                                  ];
                             }
             ];
            AudioServicesPlaySystemSound(scream);
            AudioServicesPlaySystemSound(wrongAnswer);
            [quarter setCenter: quarterOrigin];
        }

    }
    

    
    else {
        
        [quarter setCenter: quarterOrigin];
          }
    
    
    
}
    //end coins
    
    //reach goal
    
    if ((firstImage == NO) && (counterValue == goalValue)) {
        NSLog(@"DONE!!!");
         NSLog(@"vib");
        rightCounter++;
        NSLog(@"%i",rightCounter);
        
        int lowerBound = 1;
        int upperBound = 99;
        int goalInt = lowerBound + arc4random() % (upperBound - lowerBound);
        
        NSString* goalString = [NSString stringWithFormat:@"Put in %i¢", goalInt];
        
        goalValue = goalInt;
        counterValue = 0;
        counterString = [NSString stringWithFormat:@"%i¢", counterValue];
        
        if((rightCounter % 3) == 0){
            [self performSelector:@selector(changeGoal:) withObject:goalString afterDelay:1];
            [self performSelector:@selector(changePig) withObject:nil afterDelay:1];
            
            [self performSelector:@selector(changeText:) withObject:@"0¢" afterDelay:1];
            pig.animationImages = imgArray3;
            pig.animationDuration = 1;
            pig.animationRepeatCount = 1;
            [pig startAnimating];
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            Encouragement1 *encouragement1 = (Encouragement1*)[mainStoryboard instantiateViewControllerWithIdentifier:@"Encouragement1"];
            
            [self presentModalViewController:encouragement1 animated:YES];
            
            [UIView animateWithDuration: 0.0
                                  delay: 0.0
                                options: UIViewAnimationOptionCurveEaseInOut
                             animations: ^{
                                 //This block describes what the animation should do.
                                 counter.center = CGPointMake(counter.center.x, counter.center.y + 10);
                                 
                             }
                             completion: ^(BOOL finished) {
                                 [UIView animateWithDuration: 0.0
                                                       delay: .49
                                                     options: UIViewAnimationOptionCurveEaseInOut
                                                  animations: ^{
                                                      //This block describes what the animation should do.
                                                      counter.center = CGPointMake(counter.center.x, counter.center.y - 10);
                                                      
                                                      AudioServicesPlaySystemSound(coinDrop);
                                                      AudioServicesPlaySystemSound(oink);
                                                      AudioServicesPlaySystemSound(rightAnswer);
                                                      
                                                  }
                                completion:NULL];
                             }
             ];
        
        
        }
        else {
        pig.image =[UIImage imageNamed:@"blur.png"];
            [self performSelector:@selector(changeGoal:) withObject:goalString afterDelay:3];
            [self performSelector:@selector(changePig) withObject:nil afterDelay:3];
        

        

        
       
         [self performSelector:@selector(changeText:) withObject:@"0¢" afterDelay:3];
        pig.animationImages = imgArray3;
        pig.animationDuration = 1;
        pig.animationRepeatCount = 1;
        [pig startAnimating];
       

        

        [UIView animateWithDuration: 0.0
                              delay: 0.0
                            options: UIViewAnimationOptionCurveEaseInOut
                         animations: ^{
                             //This block describes what the animation should do.
                             counter.center = CGPointMake(counter.center.x, counter.center.y + 10);

                         }
                         completion: ^(BOOL finished) {
                             [UIView animateWithDuration: 0.0
                                                   delay: .49
                                                 options: UIViewAnimationOptionCurveEaseInOut
                                              animations: ^{
                                                  //This block describes what the animation should do.
                                                  counter.center = CGPointMake(counter.center.x, counter.center.y - 10);

                                                  AudioServicesPlaySystemSound(coinDrop);
                                                  AudioServicesPlaySystemSound(oink);
                                                  AudioServicesPlaySystemSound(rightAnswer);
                                                  
                                              }
                              
                                              completion: ^(BOOL finished) {
                                                  [UIView transitionWithView:self.view
                                                                    duration:1.0f
                                                                     options:UIViewAnimationOptionTransitionCrossDissolve
                                                                  animations:^{
                
                                                                      cent.alpha = 0;
                                                                      centBase.alpha = 0;
                                                                      nickel.alpha= 0;
                                                                      nickelBase.alpha= 0;
                                                                      dime.alpha= 0;
                                                                      dimeBase.alpha= 0;
                                                                      quarter.alpha= 0;
                                                                      quarterBase.alpha= 0;
                                                                      counter.alpha= 0;
                                                                      arrow.alpha = 0;
                                                                      goal.alpha=0;
                                                                      
                                                                      pennyLabel.alpha = 0;
                                                                      nickelLabel.alpha = 0;
                                                                      dimeLabel.alpha = 0;
                                                                      quarterLabel.alpha = 0;
                                                                      
                                                                      centLabel.alpha = 0;
                                                                      fiveLabel.alpha =  0;
                                                                      tenLabel.alpha = 0;
                                                                      twentyFiveLabel.alpha = 0;
                                                                      
                                                                      AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
                                                                      


                                                                  }
                                                                  completion: ^(BOOL finished) {
                                                                      [UIView transitionWithView:self.view
                                                                                        duration:2.0f
                                                                                         options:UIViewAnimationOptionTransitionCrossDissolve
                                                                                      animations:^{
                                                                                          NSLog(@"%i", level);
                                                                                          cent.alpha = 1;
                                                                                          centBase.alpha = 1;
                                                                                          nickel.alpha= 1;
                                                                                          nickelBase.alpha= 1;
                                                                                          dime.alpha= 1;
                                                                                          dimeBase.alpha= 1;
                                                                                          quarter.alpha= 1;
                                                                                          quarterBase.alpha= 1;
                                                                                          counter.alpha= 1;
                                                                                          arrow.alpha = 1;
                                                                                          goal.alpha=1;
                                                                                        
                                                                                          if(level == 2){
                                                                                          pennyLabel.alpha = 1;
                                                                                          nickelLabel.alpha = 1;
                                                                                          dimeLabel.alpha = 1;
                                                                                          quarterLabel.alpha = 1;
                                                                                          
                                                                                          centLabel.alpha = 1;
                                                                                          fiveLabel.alpha =  1;
                                                                                          tenLabel.alpha = 1;
                                                                                          twentyFiveLabel.alpha = 1;
                                                                                          }
                                                                                      }
                                                                  completion:NULL];

                         }
         ];
                             
                         }
         ];
                         }
         ];
        
        }
   

    }



    
    

}//end touchesEnded

- (void)changeText:(NSString *)text
{
    counter.text = text;
}

- (void)changeGoal:(NSString *)text
{
    goal.text = text;
}

- (void)changePig
{
    pig.image =[UIImage imageNamed:@"pig.png"];
}



- (void) receiveSoundNotification:(NSNotification *) notification{
    if ([[notification name] isEqualToString:@"SoundOn"]){
        
        sound = 2;
    }
    
    if ([[notification name] isEqualToString:@"SoundOff"]){
        
        sound = 1;
    }
}

- (void) receiveLevelNotification:(NSNotification *) notification{
    if ([[notification name] isEqualToString:@"easy"]){
        
        level = 2;
    }
    
    if ([[notification name] isEqualToString:@"hard"]){
        
        level = 1;
    }
}


- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    if(sound == 0){
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    SoundController *soundController = (SoundController*)[mainStoryboard instantiateViewControllerWithIdentifier:@"SoundController"];
    
    [self presentModalViewController:soundController animated:NO];
       
    }
    if(sound > 0 && level == 0){
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    LevelController *levelController = (LevelController*)[mainStoryboard instantiateViewControllerWithIdentifier:@"LevelController"];
    
    [self presentModalViewController:levelController animated:NO];
    }
     NSLog(@"sound equals %i", sound);
    NSLog(@"sound equals %i", sound);
    
    if(sound > 1){
        NSLog(@"Sound is on!");
        NSURL *soundURL = [[NSBundle mainBundle] URLForResource:@"Coin_drop"
                                                  withExtension:@"wav"];
        AudioServicesCreateSystemSoundID((CFURLRef)soundURL, &coinDrop);
        
        NSURL *soundURL2 = [[NSBundle mainBundle] URLForResource:@"Oink"
                                                   withExtension:@"wav"];
        AudioServicesCreateSystemSoundID((CFURLRef)soundURL2, &oink);
        
        NSURL *soundURL3 = [[NSBundle mainBundle] URLForResource:@"Right_answer_bell"
                                                   withExtension:@"wav"];
        AudioServicesCreateSystemSoundID((CFURLRef)soundURL3, &rightAnswer);
        
        NSURL *soundURL4 = [[NSBundle mainBundle] URLForResource:@"Wrong_answer_buzzer"
                                                   withExtension:@"wav"];
        AudioServicesCreateSystemSoundID((CFURLRef)soundURL4, &wrongAnswer);
        
        NSURL *soundURL5 = [[NSBundle mainBundle] URLForResource:@"Pig_scream"
                                                   withExtension:@"wav"];
        AudioServicesCreateSystemSoundID((CFURLRef)soundURL5, &scream);
    }
    
    if(level > 1){
        NSLog(@"Level is easy!");
        
        pennyLabel.alpha = 1;
        nickelLabel.alpha = 1;
        dimeLabel.alpha = 1;
        quarterLabel.alpha = 1;
        
        centLabel.alpha = 1;
        fiveLabel.alpha =  1;
        tenLabel.alpha = 1;
        twentyFiveLabel.alpha = 1;
    }


}

- (void)viewDidLoad
{
        

    
    [counter setFont: [UIFont fontWithName:@"KidprintMTStd-Bold" size:96]];
    [goal setFont: [UIFont fontWithName:@"KidprintMTStd-Bold" size:50]];
    int lowerBound = 1;
    int upperBound = 99;
    int goalInt = lowerBound + arc4random() % (upperBound - lowerBound);

    NSString* goalString = [NSString stringWithFormat:@"Put in %i¢", goalInt];
    
    [goal setText:goalString];
    
   
    goalValue = goalInt;
    counterValue = 0;
    NSLog (@"counter is %i", counterValue);
    NSLog (@"goal is %i", goalValue);
    counterOrigin = counter.center;
    centOrigin = cent.center;
    nickelOrigin = nickel.center;
    dimeOrigin = dime.center;
    quarterOrigin = quarter.center;
    
    NSLog(@"%@", NSStringFromCGPoint(centOrigin));

    
    
    
    bankWidth = bank.frame.origin.x + bank.frame.size.width;
    bankHeight = bank.frame.origin.y + bank.frame.size.height;
    bankX = bank.frame.origin.x;
    bankY = bank.frame.origin.y;
    
    
    NSMutableDictionary *myList = [[NSMutableDictionary alloc]init];
    
    
    [myList setObject:[NSNumber numberWithInt: 1] forKey:@"penny"];
    [myList setObject:[NSNumber numberWithInt: 5] forKey:@"nickel"];
    [myList setObject:[NSNumber numberWithInt: 10] forKey:@"dime"];
    [myList setObject:[NSNumber numberWithInt: 25] forKey:@"quarter"];
    
    pennyValue = [[myList objectForKey:@"penny"] intValue];
    nickelValue = [[myList objectForKey:@"nickel"] intValue];
    dimeValue = [[myList objectForKey:@"dime"] intValue];
    quarterValue = [[myList objectForKey:@"quarter"] intValue];
    
    imgArray1 = [[NSArray alloc] initWithObjects:
                 [UIImage imageNamed:@"base.png"],
                 [UIImage imageNamed:@"pig2.png"],

                 nil];
    
    imgArray2 = [[NSArray alloc] initWithObjects:
                 [UIImage imageNamed:@"base2.png"],
                 [UIImage imageNamed:@"pig2.png"],
                 
                 nil];
    
    imgArray3 = [[NSArray alloc] initWithObjects:
                 [UIImage imageNamed:@"base3.png"],
                 [UIImage imageNamed:@"pig3.png"],
                 
                 nil];
    
    imgArray4 = [[NSArray alloc] initWithObjects:
                 [UIImage imageNamed:@"base4.png"],
                 [UIImage imageNamed:@"pig4.png"],
                 
                 nil];

    firstImage = YES;
    NSLog(@"%f", counter.frame.origin.y);
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiveSoundNotification:) name:@"SoundOn" object:nil];
     [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiveSoundNotification:) name:@"SoundOff" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiveLevelNotification:) name:@"easy" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiveLevelNotification:) name:@"hard" object:nil];
    
    sound = 0;
    level=0;
        rightCounter = 0;
    wrongCounter = 0;
    
    
    [pennyLabel setFont: [UIFont fontWithName:@"KidprintMTStd-Bold" size:17]];
    [nickelLabel setFont: [UIFont fontWithName:@"KidprintMTStd-Bold" size:17]];
    [dimeLabel setFont: [UIFont fontWithName:@"KidprintMTStd-Bold" size:17]];
    [quarterLabel setFont: [UIFont fontWithName:@"KidprintMTStd-Bold" size:17]];
    
    [centLabel setFont: [UIFont fontWithName:@"KidprintMTStd-Bold" size:27]];
    [fiveLabel setFont: [UIFont fontWithName:@"KidprintMTStd-Bold" size:27]];
    [tenLabel setFont: [UIFont fontWithName:@"KidprintMTStd-Bold" size:27]];
    [twentyFiveLabel setFont: [UIFont fontWithName:@"KidprintMTStd-Bold" size:27]];
    
    pennyLabel.alpha = 0;
    nickelLabel.alpha = 0;
    dimeLabel.alpha = 0;
    quarterLabel.alpha = 0;
    
    centLabel.alpha = 0;
    fiveLabel.alpha =  0;
    tenLabel.alpha = 0;
    twentyFiveLabel.alpha = 0;

    
    [super viewDidLoad];
	
    
}


- (void)viewDidUnload
{
    
    [self setBank:nil];
    [self setGoal:nil];
    [self setNickel:nil];
    [self setDime:nil];
    [self setQuarter:nil];




    [self setCounter:nil];
    [self setCent:nil];
    [self setPig:nil];
    [self setCentBase:nil];
    [self setNickelBase:nil];
    [self setDimeBase:nil];
    [self setQuarterBase:nil];
    [self setArrow:nil];
    [pennyLabel release];
    pennyLabel = nil;
    [self setPennyLabel:nil];
    [self setNickelLabel:nil];
    [self setDimeLabel:nil];
    [self setQuarterLabel:nil];
    [self setCentLabel:nil];
    [self setFiveLabel:nil];
    [self setTenLabel:nil];
    [self setTwentyFiveLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return NO;
}





- (void)dealloc {
    [bank release];
    [goal release];
    [nickel release];
    [dime release];
    [quarter release];



    [counter release];
    [cent release];

    [pig release];
    [centBase release];
    [nickelBase release];
    [dimeBase release];
    [quarterBase release];
    [arrow release];

    [pennyLabel release];
    [nickelLabel release];
    [dimeLabel release];
    [quarterLabel release];
    [centLabel release];
    [fiveLabel release];
    [tenLabel release];
    [twentyFiveLabel release];
    [super dealloc];
}
@end
