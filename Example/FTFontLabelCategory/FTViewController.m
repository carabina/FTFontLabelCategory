//
//  FTViewController.m
//  FTFontLabelCategory
//
//  Created by johnsongs on 12/06/2017.
//  Copyright (c) 2017 johnsongs. All rights reserved.
//

#import "FTViewController.h"
#import "UILabel+FTFontLabel.h"

@interface FTViewController ()

@end

@implementation FTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 50, 300, 100)];
    label.text = @"ABC-123";
    label.backgroundColor = [UIColor lightGrayColor];
    [label fontToFit];
    [self.view addSubview:label];
    
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 155, 100, 100)];
    label1.text = @"ABC-123";
    label1.backgroundColor = [UIColor lightGrayColor];
    [label1 fontToFit];
    [self.view addSubview:label1];
    
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 260, 390, 150)];
    label2.text = @"ABC-123";
    label2.backgroundColor = [UIColor lightGrayColor];
    [label2 fontToFit];
    [self.view addSubview:label2];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
