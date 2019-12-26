//
//  ItemView.h
//  CollectionViewDemo
//
//  Created by ozonelmy on 2019/10/29.
//  Copyright © 2019 tencent. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ItemView : UIView
@property (nonatomic, assign)NSUInteger labelTag;
- (instancetype)initWithLabelTag:(NSUInteger)labelTag;
@end

NS_ASSUME_NONNULL_END
