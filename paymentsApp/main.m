//
//  main.m
//  paymentsApp
//
//  Created by Wiljay Flores on 2018-08-03.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentController.h"
#import "PaymentGateway.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        PaymentController *paymentApp = [[PaymentController alloc] init];
        
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%ld Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon",(long)[paymentApp generateRandomValue]);
        
        NSString *input = [InputCollector inputForPrompt:@"Enter your payment method"];

        NSLog(@"%@",input);
        
        PaymentGateway *gateway = [[PaymentGateway alloc] init];
        
    }
    return 0;
}
