//
//  YXDView.m
//  LayoutDemo
//
//  Created by Ye Xiaodong on 12-11-19.
//  Copyright (c) 2012 pdq. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "YXDView.h"
#import "UIView+Layout.h"

@interface YXDView ()
{
    UILabel *_label;
    UIView *_block;
}

@end

@implementation YXDView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _label = [[[UILabel alloc] initWithFrame:CGRectZero] autorelease];
        _label.text = @"A quick brown fox jumps over the lazy dog.";
        _label.backgroundColor = [UIColor clearColor];
        _label.layer.borderWidth = 1;
        _label.layer.borderColor = [UIColor redColor].CGColor;
        [_label layoutInsideView:self
         WithHorizontalAlignment:HCenter
           withVerticalAlignment:VCenter
                      withMargin:ThicknessZero()];
        
        _block = [[[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)] autorelease];
        _block.backgroundColor = [UIColor whiteColor];
        _block.layer.borderWidth = 1;
        _block.layer.borderColor = [UIColor redColor].CGColor;
        [self addSubview:_block];
        
        [self setNeedsLayout];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    [_block layoutBesideView:_label
         withVertexAlignment:VTopLeft
                  withMargin:ThicknessZero()];
}

@end
