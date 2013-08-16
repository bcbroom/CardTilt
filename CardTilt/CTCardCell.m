//
//  CTCardCell.m
//  CardTilt
//
//  Created by Brian Broom on 8/16/13.
//  Copyright (c) 2013 Brian Broom. All rights reserved.
//

#import "CTCardCell.h"

@implementation CTCardCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
