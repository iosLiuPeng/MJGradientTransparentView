//
//  MJGradientTransparentView.h
//  FortuneTelling
//
//  Created by 刘鹏i on 2019/2/19.
//  Copyright © 2019 wuhan.musjoy. All rights reserved.
//  透明渐变

#import "MJGradientView.h"

NS_ASSUME_NONNULL_BEGIN

IB_DESIGNABLE
@interface MJGradientTransparentView : MJGradientView
@property (nonatomic, assign) IBInspectable CGFloat startLocation;///< 开始渐变位置
@property (nonatomic, assign) IBInspectable CGFloat firstLocation;///< 第一段渐变位置
@property (nonatomic, assign) IBInspectable CGFloat secondLocation;///< 第二段渐变位置
@property (nonatomic, strong) IBInspectable UIColor *coverColor;///< 渐变颜色
@end

NS_ASSUME_NONNULL_END
