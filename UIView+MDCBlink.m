//  UIView+MDCBlink.m
//
//  Copyright (c) 2012 modocache
//
//  Permission is hereby granted, free of charge, to any person obtaining
//  a copy of this software and associated documentation files (the
//  "Software"), to deal in the Software without restriction, including
//  without limitation the rights to use, copy, modify, merge, publish,
//  distribute, sublicense, and/or sell copies of the Software, and to
//  permit persons to whom the Software is furnished to do so, subject to
//  the following conditions:
//
//  The above copyright notice and this permission notice shall be
//  included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
//  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
//  LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
//  OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
//  WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//


#import "UIView+MDCBlink.h"
#import <objc/runtime.h>


static void * kMDCBlinkTimerKey = &kMDCBlinkTimerKey;


@implementation UIView (MDCBlink)


#pragma mark - Public Interface

- (void)blink {
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1
                                                      target:self
                                                    selector:@selector(blinkTimerFired:)
                                                    userInfo:nil
                                                     repeats:YES];
    objc_setAssociatedObject(self, kMDCBlinkTimerKey, timer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)stopBlinking {
    NSTimer *timer = objc_getAssociatedObject(self, kMDCBlinkTimerKey);
    if (!timer) {
        [NSException raise:NSInternalInconsistencyException
                    format:@"-stopBlinking can only be called after -blink"];
    }

    [timer invalidate];
    self.hidden = NO;
}


#pragma mark - Internal Methods

- (void)blinkTimerFired:(NSTimer *)timer {
    self.hidden = !self.hidden;
}

@end
