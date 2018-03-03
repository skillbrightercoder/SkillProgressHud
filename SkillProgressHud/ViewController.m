//
//  ViewController.m
//  SkillProgressHud
//
//  Created by Mahmudul Hasan R@zib on 2/23/18.
//  Copyright © 2018 Matrix Solution Ltd. All rights reserved.
//

#import "ViewController.h"
#import "SkillProgressHud.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showProgressHudWithDarkBGNoTitle:(id)sender {
    [[SkillProgressHud sharedInstance] show];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [[SkillProgressHud sharedInstance] hide];
    });
}

- (IBAction)showProgressHudWithBlurBGNoTitle:(id)sender {
    [[SkillProgressHud sharedInstance] showWithBlurView];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [[SkillProgressHud sharedInstance] hide];
    });
}

- (IBAction)showProgressHudWithTitleNoBG:(id)sender {
    
    [[SkillProgressHud sharedInstance] showWithTitle:@"Loading..."];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [[SkillProgressHud sharedInstance] hide];
    });
}

- (IBAction)showProgressHudWithTitleandBlurBG:(id)sender {
    
    [[SkillProgressHud sharedInstance] showBlurViewWithTitle:@"Loading..."];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [[SkillProgressHud sharedInstance] hide];
    });
}
- (IBAction)showProgressHudWithTitleandDarkBG:(id)sender {
    
    [[SkillProgressHud sharedInstance] showDarkBackgroundViewWithTitle:@"Loading..."];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [[SkillProgressHud sharedInstance] hide];
    });
}

@end
