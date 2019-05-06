//
//  MJGradientTransparentView.m
//  FortuneTelling
//
//  Created by 刘鹏i on 2019/2/19.
//  Copyright © 2019 wuhan.musjoy. All rights reserved.
//

#import "MJGradientTransparentView.h"

@implementation MJGradientTransparentView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self viewConfig];
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    [self viewConfig];
}

- (void)viewConfig
{
    _startLocation = 0.0;
    _firstLocation = 0.1;
    _secondLocation = 0.3;
}

#pragma mark - Set
- (void)setStartLocation:(CGFloat)startLocation
{
    if (startLocation < 0 || startLocation > 1) {
        return;
    }
    _startLocation = startLocation;
    [self config];
}

- (void)setFirstLocation:(CGFloat)firstLocation
{
    if (firstLocation < 0 || firstLocation > 1) {
        return;
    }
    _firstLocation = firstLocation;
    [self config];
}

- (void)setSecondLocation:(CGFloat)secondLocation
{
    if (secondLocation < 0 || secondLocation > 1) {
        return;
    }
    _secondLocation  = secondLocation;
    [self config];
}

- (void)setCoverColor:(UIColor *)coverColor
{
    _coverColor = coverColor;
    [self config];
}

- (void)config
{
    if (_coverColor == nil) {
        return;
    }
    
    self.arrColors = @[[_coverColor colorWithAlphaComponent:0.0],
                       [_coverColor colorWithAlphaComponent:0.0],
                       [_coverColor colorWithAlphaComponent:0.8],
                       [_coverColor colorWithAlphaComponent:1.0],
                       [_coverColor colorWithAlphaComponent:1.0]];
    
    self.arrLocations = @[@(0.0),
                          @(_startLocation),
                          @(_firstLocation),
                          @(_secondLocation),
                          @(1.0)];
    
    [self configColors];
}

@end
