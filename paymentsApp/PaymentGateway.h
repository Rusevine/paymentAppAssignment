//
//  PaymentGateway.h
//  paymentsApp
//
//  Created by Wiljay Flores on 2018-08-03.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentGatewayDelegate <NSObject>

-(BOOL)canProcessPayment;
-(void)successMessage:(NSInteger)payment;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentGatewayDelegate> delegate;

-(void)processPaymentAmount:(NSInteger)payment;

@end
