//
//  UILabel+FTFontLabel.m
//  FTFontLabelCategory
//
//  Created by Johnson on 2017/12/5.
//  Copyright © 2017年 Johnson. All rights reserved.
//  Johnson0205

#import "UILabel+FTFontLabel.h"

@implementation UILabel (FTFontLabel)

- (void)fontToFit {
    if (self.frame.size.width > 0 && self.frame.size.height>0) {
        NSInteger currentSize = 200;
        NSInteger rightSize = currentSize;
        NSInteger leftSize = 0;
        CGSize labelSize = self.bounds.size;
        CGSize size;
        BOOL isCorrect = NO;
        while (!isCorrect) {
            currentSize = leftSize + (rightSize-leftSize)/2;
            size =  [self stringSizeWithFont:currentSize];
            if (size.width >= labelSize.width || size.height>=labelSize.height) {
                rightSize = currentSize = currentSize-1;
                size =  [self stringSizeWithFont:rightSize];
                if (size.width<=labelSize.width && size.height<=labelSize.height) {
                    isCorrect = YES;
                }
            }else if (size.width<=labelSize.width && size.height<=labelSize.height) {
                leftSize = currentSize + 1;
                size =  [self stringSizeWithFont:leftSize];
                if (size.width >= labelSize.width || size.height>=labelSize.height) {
                    isCorrect = YES;
                }
            }
            if (leftSize >= rightSize) {
                isCorrect = YES;
            }
        }
        if (currentSize == 0) {
            currentSize = 1;
        }
        self.font = [self createFontWithFontSize:currentSize];
    }else {
        NSLog(@"fontToFit: must set size first");
    }
}

- (CGSize)stringSizeWithFont:(CGFloat)fontPoint {
    NSMutableDictionary *attributeDic = [NSMutableDictionary dictionaryWithDictionary:[self.attributedText attributesAtIndex:0 effectiveRange:nil]];
    [attributeDic setObject:[self createFontWithFontSize:fontPoint] forKey:NSFontAttributeName];
    return [self.text boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributeDic context:nil].size;
}

- (UIFont *)createFontWithFontSize:(CGFloat)currentSize {
    if (self.font.fontDescriptor.symbolicTraits == UIFontDescriptorTraitBold) {
        return [UIFont boldSystemFontOfSize:currentSize];
    }else if (self.font.fontDescriptor.symbolicTraits == UIFontDescriptorTraitItalic){
        return [UIFont italicSystemFontOfSize:currentSize];
    }else {
        return [UIFont systemFontOfSize:currentSize];
    }
}

- (void)setLabelSpace:(CGFloat)lineSpace {
    NSMutableAttributedString *attributed = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineSpace];
    [attributed addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, attributed.length)];
    self.attributedText = attributed;
}
@end
