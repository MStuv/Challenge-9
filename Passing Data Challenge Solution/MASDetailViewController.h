//
//  MASDetailViewController.h
//  Passing Data Challenge Solution
//
//  Created by Mark Stuver on 10/23/13.
//  Copyright (c) 2013 Halo International Corp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MASViewController.h"

@interface MASDetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *textLabel;
@property (strong, nonatomic) MASViewController *textEntered;

@end
