//
//  UColor.m
//  ColorLib
//
//  Created by Matthew Guerra on 4/10/21.
//
#include "UColor.h"

@implementation UColor

- (instancetype)initWithRGBA:(int*)rgba {
    self = [super init];
    
    red=rgba[0];
    green=rgba[1];
    blue=rgba[2];
    alpha=rgba[3];
    
    return self;
}

- (instancetype)initWithHexRGBA:(int)hex{
    self = [super init];
    
    red=(hex>> 24) & 0xff;
    green=(hex>> 16) & 0xff;
    blue=(hex>> 8) & 0xff;
    alpha=hex & 0xff;
    
    return self;
}

- (instancetype)initWithFloatRGBA:(float*)rgba {
    self = [super init];
    
    red=rgba[0]*255;
    green=rgba[1]*255;
    blue=rgba[2]*255;
    alpha=rgba[3]*255;
    
    return self;
}

- (instancetype)initWithRGB:(int*)rgb {
    self = [super init];
    
    red=rgb[0];
    green=rgb[1];
    blue=rgb[2];
    
    return self;
}

- (instancetype)initWithHexRGB:(int)hex{
    self = [super init];
    
    red=(hex>> 16) & 0xff;
    green=(hex>> 8) & 0xff;
    blue=hex & 0xff;
    
    return self;
}

- (instancetype)initWithFloatRGB:(float*)rgb {
    self = [super init];
    
    red=rgb[0]*255;
    green=rgb[1]*255;
    blue=rgb[2]*255;
    
    return self;
}

- (NSString*) toString {
    return [NSString stringWithFormat:@"{ red= %d,green= %d,blue= %d,alpha= %d }", red,green,blue,alpha];
}

@end
