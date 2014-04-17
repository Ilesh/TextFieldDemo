//
//  ViewController.m
//  TextFieldDemo
//
//  Created by Ilesh panchal on 04/12/13.
//  Copyright (c) 2013 OEPL. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize txtNo,txtName,txtCourse,txtCollege,txtAddress,txtCity;
@synthesize scrollObj;



#pragma Mark - ViewLife cycle;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    scrollObj.contentSize=CGSizeMake(320, 480);
    
}

#pragma Mark - Delegate Method of TextField
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField ==txtAddress) {
     scrollObj.contentOffset=CGPointMake(0,90);
    }
    else if (textField==txtCity)
    {
      scrollObj.contentOffset=CGPointMake(0,160);
    }
    else if (textField==txtCollege)
    {
        scrollObj.contentOffset=CGPointMake(0,30);
    }
    
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (textField==txtNo) {
        [txtNo resignFirstResponder];
        [txtName becomeFirstResponder];
    }
    else if(textField==txtName) {
        [txtName resignFirstResponder];
        [txtCourse becomeFirstResponder];
    }
    else if(textField==txtCourse){
        [txtCourse resignFirstResponder];
        [txtCollege becomeFirstResponder];
        scrollObj.contentOffset=CGPointMake(0,30);
    }
    else if (textField==txtCollege){
        [txtCollege resignFirstResponder];
        [txtAddress becomeFirstResponder];
        scrollObj.contentOffset=CGPointMake(0,90);
    }
    else if (textField==txtAddress) {
        [txtAddress resignFirstResponder];
        [txtCity becomeFirstResponder];
        scrollObj.contentOffset=CGPointMake(0,160);
    }
    else if(textField==txtCity){
        [txtCity resignFirstResponder];
        scrollObj.contentOffset=CGPointMake(0,0);
//        [txtNo becomeFirstResponder];
    }
    
    return YES;
}



#pragma Mark - ViewLife End
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc {
    [txtNo release];
    [txtName release];
    [txtCourse release];
    [txtCollege release];
    [txtAddress release];
    [txtCity release];
    [super dealloc];
}

@end
