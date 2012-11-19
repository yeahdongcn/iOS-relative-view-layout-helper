//
//  UIView+Layout.h
//  LayoutDemo
//
//  Created by Ye Xiaodong on 12-9-12.
//  Copyright (c) 2012 pdq. All rights reserved.
//

#import <UIKit/UIKit.h>

// Summary:
//     Describe the thickness of a frame around a rectangle. Four double values describe 
//     the top, left, bottom, right sides of the rectangle, respectively.
struct Thickness {
    float top;
    float left;
    float bottom;
    float right;
};
typedef struct Thickness Thickness;

NS_INLINE Thickness ThicknessMake(float top, float left, float bottom, float right) {
    Thickness t;
    t.top = top;
    t.left = left;
    t.bottom = bottom;
    t.right = right;
    return t;
}

NS_INLINE Thickness ThicknessZero()
{
    Thickness t;
    t.top = 0;
    t.left = 0;
    t.bottom = 0;
    t.right = 0;
    return t;
}

// Summary:
//     Indicates where an element should be displayed beside reference view.
typedef enum {
    // Summary:
    //     An element aligned to the left-top of the reference view.
    VTopLeft = 0,
    //
    // Summary:
    //     An element aligned to the top-right of the reference view.
    VTopRight = 1,
    //
    // Summary:
    //     An element aligned to the bottom-left of the reference view.
    VBottomLeft = 2,
    //
    // Summary:
    //     An element aligned to the bottom-right of the reference view.
    VBottomRight = 3,
    //
    // Summary:
    //     An element aligned to the center-left of the reference view.
    VCenterLeft = 4,
    //
    // Summary:
    //     An element aligned to the center-right of the reference view.
    VCenterRight = 5,
    //
    // Summary:
    //     An element aligned to the top-center of the reference view.
    VTopCenter   = 6,
    //
    // Summary:
    //     An element aligned to the bottom-center of the reference view.
    VBottomCenter = 7,
} VertexAlignment;

// Summary:
//     Indicates where an element should be displayed on the horizontal axis relative
//     to the allocated layout slot of the parent element.
typedef enum {
    // Summary:
    //     An element aligned to the left of the layout slot for the parent element.
    HLeft = 0,
    //
    // Summary:
    //     An element aligned to the center of the layout slot for the parent element.
    HCenter = 1,
    //
    // Summary:
    //     An element aligned to the right of the layout slot for the parent element.
    HRight = 2,
    //
    // Summary:
    //     An element stretched to fill the entire layout slot of the parent element.
    HStretch = 3,
} HorizontalAlignment;

// Summary:
//     Describes how a child element is vertically positioned or stretched within
//     a parent's layout slot.
typedef enum {
    // Summary:
    //     The element is aligned to the top of the parent's layout slot.
    VTop = 0,
    //
    // Summary:
    //     The element is aligned to the center of the parent's layout slot.
    VCenter = 1,
    //
    // Summary:
    //     The element is aligned to the bottom of the parent's layout slot.
    VBottom = 2,
    //
    // Summary:
    //     The element is stretched to fill the entire layout slot of the parent element.
    VStretch = 3,
} VerticalAlignment;

@interface UIView (Layout)

- (void)layoutInsideView:(UIView *)view
 WithHorizontalAlignment:(HorizontalAlignment)horizontalAlignment
   withVerticalAlignment:(VerticalAlignment)verticalAlignment
              withMargin:(Thickness)margin;

- (void)layoutBesideView:(UIView *)view 
     withVertexAlignment:(VertexAlignment)vertexAlignment 
              withMargin:(Thickness)margin;

@end
