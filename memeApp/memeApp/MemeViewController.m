//
//  MemeViewController.m
//  memeApp
//
//  Created by Fatima Zenine Villanueva on 9/13/15.
//  Copyright © 2015 apps. All rights reserved.
//

#import "MemeViewController.h"
#import "ResultsViewController.h"
#import "cameraImageDelegate.h"
@implementation MemeViewController

- (void) viewDidLoad {
    self.enterStuffHereField.delegate = self;
    self.picker = [[UIImagePickerController alloc] init];
    self.picker.delegate = self;
    self.imageCameraImage.clipsToBounds = YES;
}

- (IBAction)generateThisMofoButton:(id)sender {
    [self.delegate memeGenerator:self.imageCameraImage.image theLabel:self.enterStuffHereField.text];
    NSLog(@"working");
        [self.navigationController popToRootViewControllerAnimated:YES];
}
- (IBAction)takeAFuckingPicture:(id)sender {
    self.picker.allowsEditing = YES;
    self.picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    [self presentViewController:self.picker animated:YES completion:NULL];
}
- (IBAction)getPictureFromAlbum:(UIButton *)sender {
    self.picker.allowsEditing = YES;
    self.picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:self.picker animated:YES completion:NULL];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    self.imageCameraImage.image = chosenImage;
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    textField.text = @" ";
}
- (IBAction)cancelButton:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}


@end
