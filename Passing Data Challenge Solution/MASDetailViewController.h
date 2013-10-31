//
//  MASDetailViewController.h
//  Passing Data Challenge Solution
//
//  Created by Mark Stuver on 10/23/13.
//  Copyright (c) 2013 Halo International Corp. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol MASDetailViewControllerDelegate <NSObject>

@required
-(void)didUdateText:(NSString *)text;

@end

@interface MASDetailViewController : UIViewController <UITextFieldDelegate>

/// Protocol/Delegate Properties
@property (weak, nonatomic) id <MASDetailViewControllerDelegate> delegate;

/// Properties
@property (strong, nonatomic) IBOutlet UILabel *textLabel;
@property (strong, nonatomic) NSString *textEntered;
@property (strong, nonatomic) IBOutlet UITextField *updateTextField;

/// Buttons
- (IBAction)updateButtonPressed:(UIButton *)sender;

@end
