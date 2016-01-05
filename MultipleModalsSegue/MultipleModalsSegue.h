//
//  MultipleModalsSegue.h
//  Multiple Modals Segue Demo
//
//  Created by Alan Ihre on 2016-01-05.
//  Copyright © 2016 Ihre IT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol MultipleModalsSegueViewController <NSObject>

- (void)presentModals:(void (^ __nullable)(void))completion;

@end

@interface MultipleModalsSegue : UIStoryboardSegue

@end
