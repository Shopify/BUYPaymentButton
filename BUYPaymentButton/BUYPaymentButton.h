//
//  BUYPaymentButton.h
//  Mobile Buy SDK
//
//  Created by Rune Madsen on 2015-04-27.
//  Copyright (c) 2015 Shopify Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

#if defined(BUYFRAMEWORK_TARGET) && BUYFRAMEWORK_TARGET
FOUNDATION_EXPORT double BUYPaymentButtonVersionNumber;
FOUNDATION_EXPORT const unsigned char BUYPaymentButtonVersionString[];
#endif

typedef NS_ENUM(NSInteger, BUYPaymentButtonStyle) {
    BUYPaymentButtonStyleWhite = 0,
    BUYPaymentButtonStyleWhiteOutline,
    BUYPaymentButtonStyleBlack
};

typedef NS_ENUM(NSInteger, BUYPaymentButtonType) {
    BUYPaymentButtonTypePlain = 0,
    BUYPaymentButtonTypeBuy
};

@interface BUYPaymentButton : UIButton

+ (instancetype)buttonWithType:(BUYPaymentButtonType)buttonType style:(BUYPaymentButtonStyle)buttonStyle;

@end
