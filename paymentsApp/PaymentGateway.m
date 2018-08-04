//
//  PaymentGateway.m
//  paymentsApp
//
//  Created by Wiljay Flores on 2018-08-03.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)processPaymentAmount:(NSInteger)payment{
    BOOL canProcess = [self.delegate canProcessPayment];
    
    if(canProcess){
        [self.delegate successMessage:payment];
    } else {
        NSLog(@"Cannot process payment. Sorry!");
    }
}

@end
