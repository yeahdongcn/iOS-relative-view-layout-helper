//
//  UIView+Layout.m
//  LayoutDemo
//
//  Created by Ye Xiaodong on 12-9-12.
//  Copyright (c) 2012 pdq. All rights reserved.
//

#import "UIView+Layout.h"

@implementation UIView (Layout)

- (void)layoutInsideView:(UIView *)view
 WithHorizontalAlignment:(HorizontalAlignment)horizontalAlignment
   withVerticalAlignment:(VerticalAlignment)verticalAlignment
              withMargin:(Thickness)margin;
{
    if (self.frame.size.width == 0 || self.frame.size.height == 0)
    {
        [self sizeToFit];
    }
    [view addSubview:self];
    
    CGRect frame = self.frame;
    CGRect parentFrame = view.frame;
    
    switch (horizontalAlignment) {
        case HLeft:
            frame.origin.x = margin.left;
            self.autoresizingMask |= UIViewAutoresizingFlexibleRightMargin;
            break;
        case HRight:
            frame.origin.x = parentFrame.size.width - frame.size.width - margin.right;
            self.autoresizingMask |= UIViewAutoresizingFlexibleLeftMargin;
            break;
        case HCenter:
            frame.origin.x = roundf((parentFrame.size.width - frame.size.width) / 2.0f);
            self.autoresizingMask |= UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
            break;
        case HStretch:
            frame.origin.x = margin.left;
            frame.size.width = parentFrame.size.width - margin.left - margin.right;
            self.autoresizingMask |= UIViewAutoresizingFlexibleWidth;
            break;
        default:
            break;
    }
    
    switch (verticalAlignment) {
        case VTop:
            frame.origin.y = margin.top;
            self.autoresizingMask |= UIViewAutoresizingFlexibleBottomMargin;
            break;
        case VBottom:
            frame.origin.y = parentFrame.size.height - frame.size.height - margin.bottom;
            self.autoresizingMask |= UIViewAutoresizingFlexibleTopMargin;
            break;
        case VCenter:
            frame.origin.y = roundf((parentFrame.size.height - frame.size.height) / 2.0f);
            self.autoresizingMask |= UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
            break;
        case VStretch:
            frame.origin.y = margin.top;
            frame.size.height = parentFrame.size.height - margin.top - margin.bottom;
            self.autoresizingMask |= UIViewAutoresizingFlexibleHeight;
            break;
        default:
            break;
    }
    
    self.frame = frame;
}

- (void)layoutBesideView:(UIView *)view 
     withVertexAlignment:(VertexAlignment)vertexAlignment 
              withMargin:(Thickness)margin
{
    CGRect frame = self.frame;
    CGRect refFrame = view.frame;
    
    switch (vertexAlignment) {
        case VTopLeft:
            frame.origin.x = refFrame.origin.x + margin.left;
            frame.origin.y = refFrame.origin.y + margin.top;
            break;
        case VTopRight:
            frame.origin.x = refFrame.origin.x + refFrame.size.width + margin.left;
            frame.origin.y = refFrame.origin.y + margin.top;
            break;
        case VBottomLeft:
            frame.origin.x = refFrame.origin.x + margin.left;
            frame.origin.y = refFrame.origin.y + refFrame.size.height + margin.top;
            break;
        case VBottomRight:
            frame.origin.x = refFrame.origin.x + refFrame.size.width + margin.left;
            frame.origin.y = refFrame.origin.y + refFrame.size.height + margin.top;
            break;
        case VCenterLeft:
            frame.origin.x = refFrame.origin.x + margin.left;
            frame.origin.y = refFrame.origin.y + roundf((refFrame.size.height - frame.size.height) / 2.0f) + margin.top;
            break;
        case VCenterRight:
            frame.origin.x = refFrame.origin.x + refFrame.size.width + margin.left;
            frame.origin.y = refFrame.origin.y + roundf((refFrame.size.height - frame.size.height) / 2.0f) + margin.top;
            break;
        case VTopCenter:
            frame.origin.x = refFrame.origin.x + roundf((refFrame.size.width - frame.size.width) / 2.0f) + margin.left;
            frame.origin.y = refFrame.origin.y + margin.top;
            break;
        case VBottomCenter:
            frame.origin.x = refFrame.origin.x + roundf((refFrame.size.width - frame.size.width) / 2.0f) + margin.left;
            frame.origin.y = refFrame.origin.y + refFrame.size.height + margin.top;
            break;
        default:
            break;
    }
    
    self.frame = frame;
}

@end
