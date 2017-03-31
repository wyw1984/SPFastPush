//
//  ThirdVC.m
//  SPPushVC
//
//  Created by uxin-lishiping on 17/1/3.
//  Copyright © 2017年 lishiping. All rights reserved.
//

#import "ThirdVC.h"
#import "SPFastPush.h"
@interface ThirdVC ()

@end

@implementation ThirdVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    self.title = _titleName;
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 200, 50);
    [button setTitle:@"back" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(void)goBack
{
    NSLog(@"点击");
    
    //    SPFastPush_OpenVC(@"ThirdVC", @{@"titleName":@"第三个VC"});
    
    
    //    SPFastPush_PoPToLastVC;
    
    
    //        SPFastPush_PopToVCAtIndex(0);
    //        SPFastPush_PoPToVCAtIndexWithAnimation(0);
    
//    SPFastPush_PopToVCByClassName(@"MainVC");
    SP_POP_TO_VC_BY_CLASSNAME(@"MainVC");

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
