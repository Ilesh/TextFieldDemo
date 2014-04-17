//
//  ViewController.h
//  TextFieldDemo
//
//  Created by Ilesh panchal on 04/12/13.
//  Copyright (c) 2013 OEPL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    UITextField *txtNo;
    UITextField *txtName;
    UITextField *txtCourse;
    UITextField *txtCollege;
    UITextField *txtAddress;
    UITextField *txtCity;
    UIScrollView *scrollObj;
}

@property(nonatomic,retain) IBOutlet UITextField *txtNo;
@property(nonatomic,retain) IBOutlet UITextField *txtName;
@property(nonatomic,retain) IBOutlet UITextField *txtCourse;
@property(nonatomic,retain) IBOutlet UITextField *txtCollege;
@property(nonatomic,retain) IBOutlet UITextField *txtAddress;
@property(nonatomic,retain) IBOutlet UITextField *txtCity;
@property(nonatomic,retain) IBOutlet UIScrollView *scrollObj;

@end
