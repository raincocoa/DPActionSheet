//
//  ViewController.h
//  DPAppProject
//
//  Created by DP on 14/11/19.
//  Copyright (c) 2014年 DPAppProject. All rights reserved.
//

#import "ViewController.h"
#import "DPActionSheet.h"
@interface ViewController ()
{
    DPActionSheet* dPactionSheet;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *naviBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [naviBtn setTitle:@"click" forState:UIControlStateNormal];
    [naviBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [naviBtn setFrame:CGRectMake(110, 150, 100.f, 100.f)];
    [naviBtn addTarget:self
                action:@selector(requestLongPressDestination)
      forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:naviBtn];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"click1" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setFrame:CGRectMake(110, 300, 100.f, 100.f)];
    [btn addTarget:self
                action:@selector(buttonAction)
      forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

}
-(void)buttonAction
{
    
}

-(void)requestLongPressDestination
{
    if (!dPactionSheet) {
        dPactionSheet = [[DPActionSheet alloc] initWithTitle:@"分享" referView:self.view];
        ButtonView *bv = [[ButtonView alloc]initWithText:@"微信" image:[UIImage imageNamed:@"dp_action_wx"] handler:^(ButtonView *buttonView){
            NSLog(@"点击微信");
        }];
        [dPactionSheet addButtonView:bv];
        
        bv = [[ButtonView alloc]initWithText:@"微信朋友圈" image:[UIImage imageNamed:@"dp_wxpengyouquan"] handler:^(ButtonView *buttonView){
            NSLog(@"点击微信朋友圈");
        }];
        [dPactionSheet addButtonView:bv];
        
        bv = [[ButtonView alloc]initWithText:@"QQ" image:[UIImage imageNamed:@"dp_action_qq"] handler:^(ButtonView *buttonView){
            NSLog(@"点击QQ");
        }];
        [dPactionSheet addButtonView:bv];
        
        bv = [[ButtonView alloc]initWithText:@"新浪微博" image:[UIImage imageNamed:@"dp_action_sina"] handler:^(ButtonView *buttonView){
            NSLog(@"点击新浪微博");
        }];
        [dPactionSheet addButtonView:bv];
        bv = [[ButtonView alloc]initWithText:@"微信" image:[UIImage imageNamed:@"dp_action_wx"] handler:^(ButtonView *buttonView){
            NSLog(@"点击微信");
        }];
        [dPactionSheet addButtonView:bv];
        
        bv = [[ButtonView alloc]initWithText:@"微信朋友圈" image:[UIImage imageNamed:@"dp_wxpengyouquan"] handler:^(ButtonView *buttonView){
            NSLog(@"点击微信朋友圈");
        }];
        [dPactionSheet addButtonView:bv];
        
        bv = [[ButtonView alloc]initWithText:@"QQ" image:[UIImage imageNamed:@"dp_action_qq"] handler:^(ButtonView *buttonView){
            NSLog(@"点击QQ");
        }];
    }
    [dPactionSheet show];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
