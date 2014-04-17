//
//  AppDelegate.h
//  TextFieldDemo
//
//  Created by Ilesh panchal on 04/12/13.
//  Copyright (c) 2013 OEPL. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    ViewController *viewObj;
}
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ViewController *viewObj;
@end
