iOS-relative-view-layout-helper
===============================

UIView+Layout.h

This category provides 2 functions to layout view inside its super view or beside one another view.

- (void)layoutInsideView:(UIView *)view
 WithHorizontalAlignment:(HorizontalAlignment)horizontalAlignment
   withVerticalAlignment:(VerticalAlignment)verticalAlignment
              withMargin:(Thickness)margin;

- (void)layoutBesideView:(UIView *)view 
     withVertexAlignment:(VertexAlignment)vertexAlignment 
              withMargin:(Thickness)margin;

