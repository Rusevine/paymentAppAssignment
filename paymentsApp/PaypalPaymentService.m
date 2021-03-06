//
//  PaypalPaymentService.m
//  paymentsApp
//
//  Created by Wiljay Flores on 2018-08-03.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

-(BOOL)canProcessPayment{
    return arc4random_uniform(2);
}

-(void)successMessage:(NSInteger)payment{
    NSLog(@"Paypal processed amount $%ld",(long)payment);
}

@end
