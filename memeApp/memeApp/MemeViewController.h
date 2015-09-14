//
//  MemeViewController.h
//  memeApp
//
//  Created by Fatima Zenine Villanueva on 9/13/15.
//  Copyright © 2015 apps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cameraImageDelegate.h"

@interface MemeViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageCameraImage;
@property (weak, nonatomic) IBOutlet UIButton *takeTheFuckingPicture;
@property (weak, nonatomic) IBOutlet UITextField *enterStuffHereField;
@property (nonatomic) UIImagePickerController *picker;



@property (weak,nonatomic) id <cameraImageDelegate> delegate;

@end
