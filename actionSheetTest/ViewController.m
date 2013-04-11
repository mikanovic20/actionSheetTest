//
//  ViewController.m
//  actionSheetTest
//
//  Created by T.mik on 12/01/30.
//  Copyright (c) 2012 mikanovic20 All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize myLabel;
@synthesize myButton;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setMyLabel:nil];
    [self setMyButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)tapButton
{
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:@"Title"
                                  delegate:self 
                                  cancelButtonTitle:@"Cancel"
                                  destructiveButtonTitle:@"Caution!"
                                  otherButtonTitles:@"Service1", @"Service2", @"Service3", nil];
    [actionSheet showInView:self.view];
    
}

- (void) actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    myLabel.text = [NSString stringWithFormat:@"<%d>", buttonIndex];
}
@end
