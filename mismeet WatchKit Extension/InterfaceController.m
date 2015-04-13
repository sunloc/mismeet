//
//  InterfaceController.m
//  mismeet WatchKit Extension
//
//  Created by 方俊 on 15-4-4.
//  Copyright (c) 2015年 sunloc. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}
- (IBAction)btnClick {
    NSArray* initialPhrases = @[@"吃饭么？", @"好的.", @"稍等."];
    [self presentTextInputControllerWithSuggestions:initialPhrases
                                   allowedInputMode:WKTextInputModePlain
                                         completion:^(NSArray *results) {
                                             if (results && results.count > 0) {
                                                 NSString *aResult = [results objectAtIndex:0];
                                                 // Use the string or image.
//                                                 [_sendBtn setTitle:aResult];
                                             }
                                             else {
                                                 // Nothing was selected.
                                             }
                                         }];

}

@end



