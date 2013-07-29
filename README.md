- [MDCBlink](#mdcblink)
	- [How to Install](#how-to-install)
	- [How to Use](#how-to-use)
	- [Sample Usage](#sample-usage)

---

# MDCBlink

HTML `<blink></blink>` for iOS.

![](http://f.cl.ly/items/191d0y2D3u2M0r0G2D1p/MDCBlink.gif)

## How to Install

1. Add `UIView+MDCBlink` to your Podfile.
2. Run `pod install`.

```ruby
# Podfile

platform :ios, '5.0'

pod 'UIView+MDCBlink'
```

## How to Use

1. Import the category `UIView (MDCBlink)`.
2. Send the `-blink` message to any instance of `UIView`.

## Sample Usage

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
