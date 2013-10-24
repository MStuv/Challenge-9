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
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    /// Sender should be a UIButton that was created in Storyboard
    if ([sender isKindOfClass:[UIButton class]]) {
        /// destinationVC should be of the class MASDetailVC
        if ([segue.destinationViewController isKindOfClass:[MASDetailViewController class]]) {
            
            /// Set instance of current viewController to self
            MASViewController *currentView = self;
            
            /// Create instance of MASDetailVC and seting it to the segue's destinationVC
            MASDetailViewController *detailView = segue.destinationViewController;
            
            /// Set the property of the destinationVC instance to the value of the currentVC instance
            detailView.textEntered = currentView;
        }
    } else
    {
        /// If the Introspection fails... give me a heads up that something is not correct!
        NSLog(@"Didn't work... something is wrong!!!");
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
