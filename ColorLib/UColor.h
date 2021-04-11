//
//  UColor.h
//  ColorLib
//
//  Created by Matthew Guerra on 4/10/21.
//

#ifndef UColor_h
#define UColor_h

#import <Foundation/Foundation.h>

@interface UColor : NSObject  {
    int red;
    int green;
    int blue;
    int alpha;
};

- (instancetype)initWithRGBA:(int*)rgba;
- (instancetype)initWithHexRGBA:(int)rgba;
- (instancetype)initWithFloatRGBA:(float*)rgba;
- (instancetype)initWithRGB:(int*)rgb;
- (instancetype)initWithHexRGB:(int)rgb;
- (instancetype)initWithFloatRGB:(float*)rgb;
- (instancetype)initWithRGBA_R:(int)r G:(int)g B:(int)b A:(int)a;
- (instancetype)initWithRGB_R:(int)r G:(int)g B:(int)b;
- (instancetype)initWithFloatRGBA_R:(float)r G:(float)g B:(float)b A:(float)a;
- (instancetype)initWithFloatRGB_R:(float)r G:(float)g B:(float)b;
- (UColor*) lerp:(UColor*)mix withPercent:(float)percent;
- (NSString*)toString;

@end

#endif /* UColor_h */
