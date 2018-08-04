//
//  main.m
//  paymentsApp
//
//  Created by Wiljay Flores on 2018-08-03.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "InputCollector.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePayPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
   
        PaymentGateway *gateway = [[PaymentGateway alloc] init];
        StripePaymentService *stripe = [[StripePaymentService alloc] init];
        PaypalPaymentService *paypal = [[PaypalPaymentService alloc] init];
        AmazonPaymentService *amazon = [[AmazonPaymentService alloc] init];
        ApplePayPaymentService *apple = [[ApplePayPaymentService alloc] init];
        
       
        
        while(TRUE){
        int randomValue = arc4random_uniform(900)+100;
            NSLog(@"Thank you for shopping at Acme.com Your total today is $%d Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: ApplePay",randomValue);
        
        NSInteger input = [[InputCollector inputForPrompt:@"Select payment method 1, 2, 3 or 4"] intValue];

        
        switch (input) {
            case 1:
                gateway.delegate = paypal;
                break;
            case 2:
                gateway.delegate = stripe;
                break;
            case 3:
                gateway.delegate = amazon;
                break;
            case 4:
                gateway.delegate = apple;
                break;
            default:
                gateway.delegate = nil;
                break;
        }
            [gateway processPaymentAmount:randomValue];
        }
        
    }
    return 0;
}
