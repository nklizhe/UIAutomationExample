//
//  ViewController.h
//  AutomationExample
//
//  Created by Zhe Li on 3/2/15.
//  Copyright (c) 2015 Zhe Li. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (nonatomic, strong) IBOutlet NSTextField *label1;
@property (nonatomic, strong) IBOutlet NSTextField *label2;

- (IBAction)buttonClicked:(id)sender;

@end

