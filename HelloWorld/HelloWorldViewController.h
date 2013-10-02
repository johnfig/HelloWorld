//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by John Figueiredo on 10/1/13.
//  Copyright (c) 2013 Byliner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController
@property (strong, nonatomic) NSString *userName;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)changeGreeting:(id)sender;
@end
