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
    
    /// Set the textLabel's text property to the value of the textField property from the textEntered instance that was passed from the MASViewController.
    self.textLabel.text = self.textEntered.textField.text;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
