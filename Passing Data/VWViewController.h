//
//  VWViewController.h
//  Passing Data
//
//  Created by Valerino on 5/27/14.
//  Copyright (c) 2014 VW. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VWDetailViewController.h"

@interface VWViewController : UIViewController <VWDetailViewControllerDelegate, UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *textField;


@end
