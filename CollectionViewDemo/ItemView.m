//
//  ItemView.m
//  CollectionViewDemo
//
//  Created by ozonelmy on 2019/10/29.
//  Copyright © 2019 tencent. All rights reserved.
//

#import "ItemView.h"

@interface ItemView () {
    UILabel *_tagLabel;
}
@end
@implementation ItemView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (instancetype)init {
    self = [super init];
    if (self) {
        [self initLabelView];
    }
    return nil;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initLabelView];
    }
    return self;
}

- (instancetype)initWithLabelTag:(NSUInteger)labelTag {
    self = [super init];
    if (self) {
        [self initLabelView];
        self.labelTag = labelTag;
    }
    return self;
}

- (void)initLabelView {
    if (nil == _tagLabel) {
        _tagLabel = [[UILabel alloc] initWithFrame:self.bounds];
        _tagLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        _tagLabel.adjustsFontSizeToFitWidth = YES;
        [self addSubview:_tagLabel];
    }
}

- (void)setLabelTag:(NSUInteger)labelTag {
    _tagLabel.text = [NSString stringWithFormat:@"%ld", labelTag];
}

- (NSUInteger)labelTag {
    return (NSUInteger)[_tagLabel.text integerValue];
}

@end
