//
//  MASDetailViewController.m
//  Passing Data Challenge Solution
//
//  Created by Mark Stuver on 10/23/13.
//  Copyright (c) 2013 Halo International Corp. All rights reserved.
//

#import "MASDetailViewController.h"

@interface MASDetailViewController ()

@end

@implementation MASDetailViewController

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
    
     /// Set the textLabel.text property to the value of the textEntered property that was passed from the MASViewController. (textEntered does not need .text property because it is a NSString)
    self.textLabel.text = self.textEntered;
    
    
    /// Set the textField as the delegate for UITextFieldDelegate
    self.updateTextField.delegate = self;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)updateButtonPressed:(UIButton *)sender {
    
    /// update the textLabel in current VC (DetailVC)
    self.textLabel.text = self.updateTextField.text;
    
    /// call the didUpdateText method on the delegate (MASVC is set as the delegate)
    /// send the updateTextField as the NSString parameter for the method
    [self.delegate didUdateText:self.updateTextField.text];
    
    [self.updateTextField resignFirstResponder];
}


#pragma mark - UITextLabel Delegate
/// UITextFieldDelegate Method that is called when the return key is touched on keyboard
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}



@end
