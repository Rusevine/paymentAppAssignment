//
//  PaymentController.m
//  paymentsApp
//
//  Created by Wiljay Flores on 2018-08-03.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "PaymentController.h"

@implementation PaymentController

-(NSInteger) generateRandomValue{
    return arc4random_uniform(1000)-100;
}

@end
