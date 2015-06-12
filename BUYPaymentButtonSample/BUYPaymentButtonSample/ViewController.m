//
//  ViewController.m
//  BUYPaymentButtonSample
//
//  Created by Rune Madsen on 2015-06-12.
//  Copyright (c) 2015 Shopify. All rights reserved.
//

#import "ViewController.h"
#import "BUYPaymentButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithWhite:0.9 alpha:1];
    
    UILabel *label = [[UILabel alloc] init];
    label.font = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    label.textAlignment = NSTextAlignmentCenter;
    label.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:label];
    Class paymentButton = NSClassFromString(@"PKPaymentButton");
    if (paymentButton) {
        label.text = @"PKPaymentButton";
    } else {
        label.text = @"BUYPaymentButton";
    }
    
    BUYPaymentButton *paymentButtonBuyBlack = [BUYPaymentButton buttonWithType:BUYPaymentButtonTypeBuy style:BUYPaymentButtonStyleBlack];
    paymentButtonBuyBlack.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:paymentButtonBuyBlack];
    
    BUYPaymentButton *paymentButtonBuyWhite = [BUYPaymentButton buttonWithType:BUYPaymentButtonTypeBuy style:BUYPaymentButtonStyleWhite];
    paymentButtonBuyWhite.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:paymentButtonBuyWhite];
    
    BUYPaymentButton *paymentButtonBuyWhiteOutline = [BUYPaymentButton buttonWithType:BUYPaymentButtonTypeBuy style:BUYPaymentButtonStyleWhiteOutline];
    paymentButtonBuyWhiteOutline.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:paymentButtonBuyWhiteOutline];
    
    BUYPaymentButton *paymentButtonPlainBlack = [BUYPaymentButton buttonWithType:BUYPaymentButtonTypePlain style:BUYPaymentButtonStyleBlack];
    paymentButtonPlainBlack.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:paymentButtonPlainBlack];
    
    BUYPaymentButton *paymentButtonPlainWhite = [BUYPaymentButton buttonWithType:BUYPaymentButtonTypePlain style:BUYPaymentButtonStyleWhite];
    paymentButtonPlainWhite.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:paymentButtonPlainWhite];
    
    BUYPaymentButton *paymentButtonPlainWhiteOutline = [BUYPaymentButton buttonWithType:BUYPaymentButtonTypePlain style:BUYPaymentButtonStyleWhiteOutline];
    paymentButtonPlainWhiteOutline.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:paymentButtonPlainWhiteOutline];
    
    UIView *spacerTop = [[UIView alloc] init];
    spacerTop.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:spacerTop];
    
    UIView *spacerBottom = [[UIView alloc] init];
    spacerBottom.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:spacerBottom];
    
    NSDictionary *viewsDictionary = NSDictionaryOfVariableBindings(spacerTop, label, paymentButtonBuyBlack, paymentButtonBuyWhite, paymentButtonBuyWhiteOutline, paymentButtonPlainBlack, paymentButtonPlainWhite, paymentButtonPlainWhiteOutline, spacerBottom);
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:paymentButtonBuyBlack attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[label]|" options:0 metrics:nil views:viewsDictionary]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[paymentButtonBuyBlack(200)]" options:0 metrics:nil views:viewsDictionary]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[paymentButtonBuyWhite(220)]" options:0 metrics:nil views:viewsDictionary]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[paymentButtonBuyWhiteOutline(160)]" options:0 metrics:nil views:viewsDictionary]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[paymentButtonPlainBlack(100)]" options:0 metrics:nil views:viewsDictionary]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[paymentButtonPlainWhite(88)]" options:0 metrics:nil views:viewsDictionary]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[paymentButtonPlainWhiteOutline(120)]" options:0 metrics:nil views:viewsDictionary]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[spacerTop]-[label]-(50)-[paymentButtonBuyBlack(44)]-[paymentButtonBuyWhite(64)]-[paymentButtonBuyWhiteOutline(30)]-[paymentButtonPlainBlack(20)]-[paymentButtonPlainWhite(44)]-[paymentButtonPlainWhiteOutline(44)][spacerBottom(==spacerTop)]|" options:NSLayoutFormatAlignAllCenterX metrics:nil views:viewsDictionary]];
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
