//
//  VWDetailViewController.h
//  Passing Data
//
//  Created by Valerino on 5/27/14.
//  Copyright (c) 2014 VW. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol VWDetailViewControllerDelegate <NSObject>

@required

-(void) didUpdateText:(NSString *) text;

@end

@interface VWDetailViewController : UIViewController

@property (weak, nonatomic) id <VWDetailViewControllerDelegate> delegate;
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) NSString *informationFromTextField;

@property (strong, nonatomic) IBOutlet UITextField *textField;
- (IBAction)updateButtonPressed:(id)sender;


@end
