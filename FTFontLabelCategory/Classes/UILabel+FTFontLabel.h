//
//  UILabel+FTFontLabel.h
//  FTFontLabelCategory
//
//  Created by Johnson on 2017/12/5.
//  Copyright © 2017年 Johnson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (FTFontLabel)

//设置label的间距
- (void)setLabelSpace:(CGFloat)lineSpace;

//根据frame自动设置字体大小
- (void)fontToFit;

@end
