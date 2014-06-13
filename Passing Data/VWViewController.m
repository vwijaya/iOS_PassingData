//
//  VWViewController.m
//  Passing Data
//
//  Created by Valerino on 5/27/14.
//  Copyright (c) 2014 VW. All rights reserved.
//

#import "VWViewController.h"
#import "VWDetailViewController.h"

@interface VWViewController ()

@end

@implementation VWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.textField.delegate = self;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([sender isKindOfClass:[UIButton class]]) {
        if([segue.destinationViewController isKindOfClass:[VWDetailViewController class]]) {
            
            VWDetailViewController *detailVC = segue.destinationViewController;
            detailVC.informationFromTextField = self.textField.text;
            detailVC.delegate = self;
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - VWDetailViewControllerDelegate

-(void) didUpdateText:(NSString *) text
{
    self.textField.text = text;
}

#pragma mark - UITextFieldDelegate

-(BOOL) textFieldShouldReturn:(UITextField *)textField
{
    [self.textField resignFirstResponder];
    return YES;
}

@end
