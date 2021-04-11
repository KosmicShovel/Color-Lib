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

- (instancetype)initWithRGBA_R:(int)r G:(int)g B:(int)b A:(int)a {
    self = [super init];
    
    red=r;
    green=g;
    blue=b;
    alpha=a;
    
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

- (instancetype)initWithFloatRGBA_R:(float)r G:(float)g B:(float)b A:(float)a {
    self = [super init];
    
    red=r*255;
    green=g*255;
    blue=b*255;
    alpha=a*255;
    
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
    alpha=255;
    
    return self;
}

- (instancetype)initWithFloatRGB:(float*)rgb {
    self = [super init];
    
    red=rgb[0]*255;
    green=rgb[1]*255;
    blue=rgb[2]*255;
    alpha=255;
    
    return self;
}

- (instancetype)initWithFloatRGB_R:(float)r G:(float)g B:(float)b {
    self = [super init];
    
    red=r*255;
    green=g*255;
    blue=b*255;
    alpha=255;
    
    return self;
}

- (instancetype)initWithRGB_R:(int)r G:(int)g B:(int)b {
    self = [super init];
    
    red=r;
    green=g;
    blue=b;
    alpha=255;
    
    return self;
}

- (UColor*) lerp:(UColor*)mix withPercent:(float)percent {
    int r = (mix->red - red) * percent + red;
    int g = (mix->green - green) * percent + green;
    int b = (mix->blue - blue) * percent + blue;
    int a = (mix->alpha - alpha) * percent + alpha;
    return [[UColor alloc] initWithRGBA_R:r G:g B:b A:a];
    
}

- (NSString*) toString {
    return [NSString stringWithFormat:@"{ red= %d,green= %d,blue= %d,alpha= %d }", red,green,blue,alpha];
}

@end
