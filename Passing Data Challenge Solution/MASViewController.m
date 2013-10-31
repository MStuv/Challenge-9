//
//  MASViewController.m
//  Passing Data Challenge Solution
//
//  Created by Mark Stuver on 10/23/13.
//  Copyright (c) 2013 Halo International Corp. All rights reserved.
//

#import "MASViewController.h"
#import "MASDetailViewController.h"

@interface MASViewController ()

@end

@implementation MASViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    /// Set the textField as the delegate for UITextFieldDelegate
    self.textField.delegate = self;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Sender should be a UIButton that was created in Storyboard
    if ([sender isKindOfClass:[UIButton class]]) {
        // destinationVC should be of the class MASDetailVC
        if ([segue.destinationViewController isKindOfClass:[MASDetailViewController class]]) {
            
            // Set instance of current viewController to self
            MASViewController *currentView = self;
            
            // Create instance of MASDetailVC and set it as the segue's destinationVC
            MASDetailViewController *detailView = segue.destinationViewController;
            
            // Set the property of the MASDetailVC instance to the value of the currentVC instance's textField
            detailView.textEntered = currentView.textField.text;
        }
    }
    
    /// If segue destinationVC is of the class MASDetailViewController...
    if ([segue.destinationViewController isKindOfClass:[MASDetailViewController class]]) {
        
        /// Create instance of detailVC and set value to the segue destinationVC
        MASDetailViewController *detailVC = segue.destinationViewController;
        /// Set the detailVC's delegate property to self. (self being the current VC = MASVC)
        detailVC.delegate = self;
    }
    
    else
    {
        // If the Introspection fails... give me a heads up that something is not correct!
        NSLog(@"Didn't work... something is wrong!!!");
    }
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - MASDetailViewController Delegate

-(void)didUdateText:(NSString *)text
{
    /// Set the currentVC (MASVC) textField to equal text (the NSString object passed when calling the didUdateText method.
    self.textField.text = text;
}


#pragma mark - UITextLabel Delegate
/// UITextFieldDelegate Method that is called when the return key is touched on keyboard
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"Is this being called?");
    [textField resignFirstResponder];
    return YES;
}




@end
