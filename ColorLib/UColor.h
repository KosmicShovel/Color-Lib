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
- (NSString*)toString;

@end

#endif /* UColor_h */
