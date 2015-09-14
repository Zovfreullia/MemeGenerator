//
//  ResultsViewController.h
//  memeApp
//
//  Created by Fatima Zenine Villanueva on 9/13/15.
//  Copyright © 2015 apps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cameraImageDelegate.h"

@interface ResultsViewController : UIViewController <cameraImageDelegate>


@property (weak, nonatomic) IBOutlet UIImageView *memeImage;
@property (weak, nonatomic) IBOutlet UILabel *memeLabel;

@end
