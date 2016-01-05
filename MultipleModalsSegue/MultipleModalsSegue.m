//
//  MultipleModalsSegue.m
//  Multiple Modals Segue Demo
//
//  Created by Alan Ihre on 2016-01-05.
//  Copyright © 2016 Ihre IT. All rights reserved.
//

#import "MultipleModalsSegue.h"

@implementation MultipleModalsSegue

- (void)perform{
    
    UIViewController *sourceViewController = [self sourceViewController];
    __block UIViewController *destinationViewController = [self destinationViewController];
    
    //Create a snapshot image of the source view controller to show while displaying the first modal view controller
    UIGraphicsBeginImageContextWithOptions(sourceViewController.view.bounds.size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [sourceViewController.view.layer renderInContext:context];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    __block UIImageView *snapshotImageView = [[UIImageView alloc] initWithFrame:sourceViewController.view.frame];
    snapshotImageView.image = image;
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    [window insertSubview:snapshotImageView atIndex:0];
    
    destinationViewController.view.alpha = 0;
    UIViewController *rootViewController = nil;
    if ([destinationViewController isKindOfClass:[UINavigationController class]]) {
        rootViewController = [[(UINavigationController *)destinationViewController viewControllers] firstObject];
    } else {
        rootViewController = destinationViewController;
    }
    
    [sourceViewController presentViewController:destinationViewController animated:NO completion:NULL];
    
    [(id <MultipleModalsSegueViewController>)rootViewController presentModals:^{
        destinationViewController.view.alpha = 1;
        
        [snapshotImageView removeFromSuperview];
    }];
    
}

@end
