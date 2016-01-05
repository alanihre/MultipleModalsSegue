//
//  MultipleModalsSegue.m
//  Multiple Modals Segue Demo
//
//  Created by Alan Ihre on 2016-01-05.
//  Copyright © 2016 Ihre IT. All rights reserved.
//

#import "MultipleModalsSegue.h"

@implementation MultipleModalsSegue{
    UIImageView *_snapshotImageView;
}

- (void)perform{
    
    UIViewController *sourceViewController = [self sourceViewController];
    __block UIViewController *destinationViewController = [self destinationViewController];
    
    UIGraphicsBeginImageContextWithOptions(sourceViewController.view.bounds.size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [sourceViewController.view.layer renderInContext:context];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    _snapshotImageView = [[UIImageView alloc] initWithFrame:sourceViewController.view.frame];
    _snapshotImageView.image = image;
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    [window insertSubview:_snapshotImageView atIndex:0];
    
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
        
        [_snapshotImageView removeFromSuperview];
    }];
    
}

@end
