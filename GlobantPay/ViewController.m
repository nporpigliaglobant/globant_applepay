//
//  ViewController.m
//  GlobantPay
//
//  Created by Nicolas Alejandro Porpiglia on 4/20/15.
//  Copyright (c) 2015 Globant. All rights reserved.
//

#import "ViewController.h"
#import <PassKit/PassKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onPurchase:(id)sender {
    if([PKPaymentAuthorizationViewController canMakePayments]){
        PKPaymentRequest *request = [[PKPaymentRequest alloc] init];
        request.countryCode = @"US";
        request.currencyCode = @"USD";
        request.supportedNetworks = @[PKPaymentNetworkAmex, PKPaymentNetworkMasterCard, PKPaymentNetworkVisa];
        request.merchantCapabilities = PKMerchantCapabilityEMV;
        request.merchantIdentifier = @"merchant.com.globant.applepaypoc";
    }
}

@end
