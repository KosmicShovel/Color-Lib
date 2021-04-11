//
//  test.m
//  ColorLib
//
//  Created by Matthew Guerra on 4/10/21.
//

#import <Foundation/Foundation.h>
#import "UColor.h"


int main(int argc, char * argv[]) {
    float floats[3];
    floats[0]=0.4f;
    floats[1]=0.5f;
    floats[2]=0.97f;
    UColor* rgb = [[UColor alloc]initWithFloatRGB:floats];
    NSLog(@"%@", [rgb toString]);
}
