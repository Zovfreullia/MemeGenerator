//
//  cameraImageDelegate.h
//  memeApp
//
//  Created by Fatima Zenine Villanueva on 9/13/15.
//  Copyright © 2015 apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol cameraImageDelegate <NSObject>

@required

- (void) memeGenerator: (UIImage *)memeImage theLabel: (NSString *)memeString;

@end
