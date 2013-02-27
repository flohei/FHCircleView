//
//  FHCircleView.m
//
//  Created by Florian Heiber on 25.02.13.
//  Copyright (c) 2013 rootof.net. All rights reserved.
//

#import "FHCircleView.h"

@implementation FHCircleView

@synthesize color = _color;

+ (FHCircleView *)new {
    return [[FHCircleView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
}

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setBackgroundColor:[UIColor clearColor]];
    }
    return self;
}

- (void)setColor:(UIColor *)color {
    _color = color;
    [self setNeedsDisplay];
}

- (UIColor *)color {
    if (!_color) {
        return [UIColor lightGrayColor];
    } else {
        return _color;
    }
}

- (void)drawRect:(CGRect)rect {
    const CGFloat *components = CGColorGetComponents([[self color] CGColor]);
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(contextRef, 2.0);
    CGContextSetFillColor(contextRef, components);
    CGContextSetStrokeColor(contextRef, components);
    CGContextFillEllipseInRect(contextRef, rect);
}

@end
