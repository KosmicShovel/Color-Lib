//
//  test.m
//  ColorLib
//
//  Created by Matthew Guerra on 4/10/21.
//

#import <Foundation/Foundation.h>
#import "UColor.h"


int main(int argc, char * argv[]) {
    float max_steps = 100;
    UColor *col1 = [[UColor alloc] initWithRGB_R:255 G:80 B:20];
    UColor *col2 = [[UColor alloc] initWithHexRGB:0x0000ff];
    for (float i = 0; i<max_steps; i++) {
        float perc = i/max_steps;
        NSLog(@"%@", [[col1 lerp:col2 withPercent:perc] toString]);
    }
}
