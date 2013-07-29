## MDCBlink

HTML `<blink></blink>` for iOS.

![](http://f.cl.ly/items/191d0y2D3u2M0r0G2D1p/MDCBlink.gif)

## How to Use

1. Import the category `UIView (MDCBlink)`.
2. Send the `-blink` message to any instance of `UIView`.

## Example

```objc
#import "UIView+MDCBlink.h`  // #A

- (void)createLabel {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];  // #B
    label.text = @"HTML for the win.";
    [label blink];  // #C
}

// #A Import the header.
// #B Create the label.
// #C Send the blink message.
```
