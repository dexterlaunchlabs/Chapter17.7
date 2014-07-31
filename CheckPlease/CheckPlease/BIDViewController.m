//
//  BIDViewController.m
//  CheckPlease
//
//  Created by Dexter Launchlabs on 7/31/14.
//  Copyright (c) 2014 Dexter Launchlabs. All rights reserved.
//

#import "BIDViewController.h"
#import "BIDCheckMarkRecognizer.h"
@interface BIDViewController ()

@end

@implementation BIDViewController
@synthesize label;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    BIDCheckMarkRecognizer *check = [[BIDCheckMarkRecognizer alloc] initWithTarget:self
                                                                            action:@selector(doCheck:)]; [self.view addGestureRecognizer:check];
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view. // e.g. self.myOutlet = nil;
    self.label = nil;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)doCheck:(BIDCheckMarkRecognizer *)check { label.text = @"Checkmark";
    [self performSelector:@selector(eraseLabel)
     withObject:nil afterDelay:1.6];
}
- (void)eraseLabel { label.text = @"";
}
@end
