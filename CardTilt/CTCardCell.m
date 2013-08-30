//
//  CTCardCell.m
//  CardTilt
//
//  Created by Brian Broom on 8/16/13.
//  Copyright (c) 2013 Brian Broom. All rights reserved.
//

#import "CTCardCell.h"
#import <QuartzCore/QuartzCore.h>

@interface CTCardCell () {
    NSString *website;
    NSString *twitter;
    NSString *facebook;
}

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

- (void)setupWithDictionary:(NSDictionary *)dictionary
{
    self.mainView.layer.cornerRadius = 10;
    self.mainView.layer.masksToBounds = YES;    
    
    self.profilePhoto.image = [UIImage imageNamed:[dictionary valueForKey:@"image"]];
    
    self.nameLabel.text = [dictionary valueForKey:@"name"];
    self.titleLabel.text = [dictionary valueForKey:@"title"];
    self.locationLabel.text = [dictionary valueForKey:@"location"];
    
    NSString *aboutText = [dictionary valueForKey:@"about"];
    NSString *newlineString = @"\n";        
    self.aboutLabel.text = [aboutText stringByReplacingOccurrencesOfString:@"\\n" withString:newlineString];
    
    website = [dictionary valueForKey:@"web"];
    if (website) {
        self.webLabel.text = [dictionary valueForKey:@"web"];
    } else {
        self.webLabel.hidden = YES;
        self.webButton.hidden = YES;
    }
    
    twitter = [dictionary valueForKey:@"twitter"];
    if (!twitter) {
        self.twImage.hidden = YES;
        self.twButton.hidden = YES;
    } else {
        self.twImage.hidden = NO;
        self.twButton.hidden = NO;
    }
    
    facebook = [dictionary valueForKey:@"facebook"];
    if (!facebook) {
        self.fbImage.hidden = YES;
        self.fbButton.hidden = YES;
    } else {
        self.fbImage.hidden = NO;
        self.fbButton.hidden = NO;
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)launchWeb:(id)sender
{
    if (website) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:website]];
    }
}

- (IBAction)launchTwitter:(id)sender
{
    if (twitter) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:twitter]];
    }
}


- (IBAction)launchFacebook:(id)sender
{
    if (facebook) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:facebook]];
    }
}

@end
