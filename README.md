## MDCBlink

HTML `<blink></blink>` for iOS.

![](http://f.cl.ly/items/191d0y2D3u2M0r0G2D1p/MDCBlink.gif)

## How to Use

1. Import the category `UIView (MDCBlink)`.
2. Send the `-blink` message to any instance of `UIView`.

## Example

```objc
UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];  // #A
label.text = @"HTML for the win.";
[label blink];  // #B

// #A Create the label.
// #B Send the blink message.
```
