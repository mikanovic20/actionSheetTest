//
//  ViewController.h
//  actionSheetTest
//
//  Created by T.mik on 12/01/30.
//  Copyright (c) 2012 mikanovic20 All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIActionSheetDelegate>
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (weak, nonatomic) IBOutlet UIButton *myButton;
- (IBAction)tapButton;

@end
