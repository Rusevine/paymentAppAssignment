//
//  AmazonPaymentService.m
//  paymentsApp
//
//  Created by Wiljay Flores on 2018-08-03.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

-(BOOL)canProcessPayment{
    return arc4random_uniform(2);
}

-(void)successMessage:(NSInteger)payment{
    NSLog(@"Amazon processed amount $%ld",(long)payment);
}

@end
