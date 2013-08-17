//
//  CTCardCell.m
//  CardTilt
//
//  Created by Brian Broom on 8/16/13.
//  Copyright (c) 2013 Brian Broom. All rights reserved.
//

#import "CTCardCell.h"

@interface CTCardCell ()


@end

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

- (IBAction)launchWeb:(id)sender
{
    NSString *webURL = @"http://www.raywenderlich.com";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:webURL]];
}

- (IBAction)launchTwitter:(id)sender
{
    NSString *twitterURL = @"http://www.twitter.com";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:twitterURL]];
}


- (IBAction)launchFacebook:(id)sender
{
    NSString *facebookURL = @"http://www.facebook.com";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:facebookURL]];
}

@end
