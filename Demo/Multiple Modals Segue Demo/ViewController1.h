//
//  ViewController1.h
//  Multiple Modals Segue Demo
//
//  Created by Alan Ihre on 2016-01-05.
//  Copyright © 2016 Ihre IT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MultipleModalsSegue.h"

@interface ViewController1 : UIViewController <MultipleModalsSegueViewController>

- (IBAction)closeButtonPressed:(UIBarButtonItem *)sender;

@end
