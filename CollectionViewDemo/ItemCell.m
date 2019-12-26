//
//  ItemCell.m
//  CollectionViewDemo
//
//  Created by ozonelmy on 2019/10/29.
//  Copyright © 2019 tencent. All rights reserved.
//

#import "ItemCell.h"
@implementation ItemCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        UILabel *label = [[UILabel alloc] initWithFrame:self.contentView.bounds];
        label.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        label.textAlignment = NSTextAlignmentCenter;
        label.tag = 1000;
        label.layer.borderColor = [UIColor redColor].CGColor;
        label.layer.borderWidth = 1.f;
        [self.contentView addSubview:label];
    }
    return self;
}

- (void)setIndexPath:(NSIndexPath *)indexPath {
    UILabel *label = [self.contentView viewWithTag:1000];
    label.text = [NSString stringWithFormat:@"{%ld, %ld}", indexPath.section, indexPath.row];
}

@end
