//
//  ImagePicker.h
//  ReplaceThePicture
//
//  Created by apple on 16/1/25.
//  Copyright © 2016年 DeveYang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^ImagePickerFinishAction)(UIImage *image);

@interface ImagePicker : NSObject
/**
 *  更换头像需要封装的类方法
 *
 *  @param viewController 用于present UIImagePickerController对象
 *  @param allowsEditing  选择的图片是否允许编辑
 *  @param finishAction   选择完毕后回调获得选择的图片
 */
+ (void)showImagePickerFromViewController:(UIViewController *)viewController
                            allowsEditing:(BOOL)allowsEditing
                             finishAction:(ImagePickerFinishAction)finishAction;
@end
