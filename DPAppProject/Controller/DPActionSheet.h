//
//  ViewController.h
//  DPAppProject
//
//  Created by DP on 14/11/19.
//  Copyright (c) 2014年 DPAppProject. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DPActionSheetDelegate <NSObject>

-(void)didClickIndex:(NSInteger)index;
-(void)didClickOnCancelButton;

@end

@class ButtonView;
@class DPActionSheet;

typedef void(^ButtonViewHandler)(ButtonView *buttonView);

@interface ButtonView : UIView

@property (nonatomic, strong) UILabel *textLabel;

@property (nonatomic, strong) UIButton *imageButton;

@property (nonatomic, weak) DPActionSheet *activityView;

- (id)initWithText:(NSString *)text image:(UIImage *)image handler:(ButtonViewHandler)handler;

@end


//actionSheet view
@interface DPActionSheet : UIView

@property (nonatomic, strong) UIColor *bgColor;

@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, strong) UIButton *cancelButton;

@property (nonatomic, assign) int numberOfButtonPerLine;

@property (nonatomic, assign) BOOL useGesturer;

@property (nonatomic, getter = isShowing) BOOL show;

- (id)initWithTitle:(NSString *)title referView:(UIView *)referView;

- (void)addButtonView:(ButtonView *)buttonView;

- (void)setBgColor:(UIColor *)bgColor;

- (void)show;

- (void)hide;


@end

