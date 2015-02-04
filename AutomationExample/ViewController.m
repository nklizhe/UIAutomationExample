//
//  ViewController.m
//  AutomationExample
//
//  Created by Zhe Li on 3/2/15.
//  Copyright (c) 2015 Zhe Li. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)buttonClicked:(id)sender {
    // swap text between labels
    NSLog(@"button clicked!");
    NSString *txt = [self.label1 stringValue];
    [self.label1 setStringValue:[self.label2 stringValue]];
    [self.label2 setStringValue:txt];
}

@end
