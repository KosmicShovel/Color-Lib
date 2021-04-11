//
//  test.m
//  ColorLib
//
//  Created by Matthew Guerra on 4/10/21.
//

#import <Foundation/Foundation.h>
#import "UColor.h"
#include <mach/mach.h>
#include <mach/thread_act.h>
#include <mach/mach_init.h>
#include <pthread.h>
#include <dlfcn.h>
#include <signal.h>
#include <sys/proc_info.h>
#include <libproc.h>

int main(int argc, char * argv[]) {
    float max_steps = 100;
    UColor *col1 = [[UColor alloc] initWithRGB_R:255 G:80 B:20];
    UColor *col2 = [[UColor alloc] initWithHexRGB:0x0000ff];
    UColor *col3 = [[UColor alloc] initWithFloatRGBA_R:0.2f G:0.99f B:0.231f A:0.9f];
    for (float i = 0; i<max_steps; i++) {
        float perc = i/max_steps;
        printf("%s\n", [[[[col1 lerp:col2 withPercent:perc/2] lerp:col3 withPercent:(perc-0.5f > 0 ? perc-0.5f : 0)] toString] UTF8String]);
    }
}
