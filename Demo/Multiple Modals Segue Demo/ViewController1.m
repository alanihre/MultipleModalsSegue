//
//  ViewController1.m
//  Multiple Modals Segue Demo
//
//  Created by Alan Ihre on 2016-01-05.
//  Copyright © 2016 Ihre IT. All rights reserved.
//

#import "ViewController1.h"

@implementation ViewController1

- (void)presentModals:(void (^)(void))completion
{
    UINavigationController *destinationViewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"ViewController2NavigationController"];
    
    [self presentViewController:destinationViewController animated:YES completion:completion];
}

- (IBAction)closeButtonPressed:(UIBarButtonItem *)sender
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
